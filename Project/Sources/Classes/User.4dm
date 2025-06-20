Class extends DataClass

exposed Function getCurrentUser()->$user : cs:C1710.UserEntity  //used
	If (Session:C1714.storage.payload#Null:C1517)
		$user:=This:C1470.all().query("email = :1"; Session:C1714.storage.payload.email).first()
	End if 
	
exposed Function logout()  //used
	var $currentUser : cs:C1710.UserEntity:=This:C1470.getCurrentUser()
	$currentUser.status:={emoji: "🕛"; label: "Offline"}
	$currentUser.lastLogin:=Current time:C178()
	$currentUser.save()
	Session:C1714.clearPrivileges()
	Use (Session:C1714.storage)
		Session:C1714.storage.payload:=New shared object:C1526()
	End use 
	Web Form:C1735.setMessage("You got disconnected!")
	
	//MN:	(issue) when connecting with a wrong password, it goes also to the index page because there is no condition about a wrong password
exposed Function logIn($email : Text; $pwd : Text) : Text  //used
	var $user : cs:C1710.UserEntity
	If (($email#"") && ($pwd#""))
		$user:=ds:C1482.User.query("email = :1 and password = :2"; $email; $pwd).first()
		If ($user#Null:C1517)
			Use (Session:C1714.storage)
				Session:C1714.storage.payload:=New shared object:C1526("ID"; $user.ID; "email"; $user.email; "role"; $user.role)
			End use 
			Session:C1714.setPrivileges($user.role)
			$user.status:={emoji: Null:C1517; label: "Online"}
			$user.save()
			return "index"
		Else 
			Web Form:C1735.setWarning("The username or password is incorrect. Please try again!")
			return "logInPage"
		End if 
	Else 
		Web Form:C1735.setWarning("Please fill all the required fields!")
		return "logInPage"
	End if 
	
exposed Function search($search : Text) : cs:C1710.UserSelection  //used
	If ($search#"")
		return This:C1470.query("fullName = :1"; "@"+$search+"@")
	Else 
		return This:C1470.all()
	End if 
	
exposed Function suggestedFriends($currentUser : cs:C1710.UserEntity)  //used in groupspage
	var $friends : cs:C1710.UserSelection
	var $selection : cs:C1710.UserSelection:=This:C1470.all()
	If ($currentUser#Null:C1517)
		// $friends = $currentUser.friendships.user2
		$friends:=$currentUser.friendships.user2.addInList($currentUser)
	End if 
	return $selection.minus($friends)
	// return this.all().minus($friends).minus($currentUser)
	
exposed Function sendInvit($receiverEmail : Text)  //used
	var $mailer : cs:C1710.Mailer:=cs:C1710.Mailer.me
	var $emailOptions : Object:={}
	var $invitContent : Text
	// trace
	If ($receiverEmail#"")
		If (This:C1470.query("email = :1"; $receiverEmail).length#0)
			Web Form:C1735.setError("Email already exists in the workplace!")
		Else 
			If ((Session:C1714.storage.mailingCredentials.userName#Null:C1517 && Session:C1714.storage.mailingCredentials.password#Null:C1517) || (ds:C1482.Token.query("label = 'mailToken'").length#0))
				$emailOptions.personalizations:=[{to: [{$email: $receiverEmail}]}]
				$emailOptions.subject:="New invitation from Q. workplace!"
				$invitContent:="<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Workplace Invitation</title><style>body{font-family:Arial; sans-serif;margin:0;padding:0;background-color:#f5f9ff;c"+"o"+"lor:#333;}.container{max-width:600px;margin:20px auto;background:#ffffff;border:1px solid #d0e7ff;border-radius:10px;overflow:hidden;box-shadow:0 4px 6px rgba(0; 0; 0; 0.1);}.header{background-color:#1e90ff;color:#ffffff;padding:20px;text-align:center"+";}."+"header h1{margin:0;font-size:1.8rem;}.content{padding:20px;}.content p{font-size:1rem;line-height:1.6;}.footer{background-color:#eaf5ff;padding:15px;text-align:center;font-size:0.9rem;color:#555;}.button{display:inline-block;margin:20px 0;padding:10px"+" 20px;background-color:#1e90ff;color:#ffffff;text-decoration:none;border-radius:5px;font-size:1rem;transition:background-color 0.3s ease;}.button:hover{background-color:#005cbf;}</style></head><body><div class=\"container\"><div class=\"header\"><h1>Welco"+"me to Q. Workplace!</h1></div><div class=\"content\"><p>Dear "+String:C10($receiverEmail)+",</p><p>We are delighted to invite you to our workplace\\! Join us for an enriching experience where you'll get to know more about our team, culture, and goals.</p><a href=\"https://dev-ab053346-7525-4994-8bb1-ab3eba9bf45f.staging-public.4dcloudtest.com"+"/\" class=\"button\">Join us now!</a><p>We look forward to welcoming you\\!</p></div></div></body></html>"
				$emailOptions.content:=[{type: "text/html"; value: $invitContent}]
				$mailer.send($emailOptions)
			Else 
				Web Form:C1735.setError("Set your sendgrid mailing credentials in settings! ")
			End if 
		End if 
	Else 
		Web Form:C1735.setError("Fill the required field!")
	End if 
	
exposed Function setNewPassword($email : Text; $newPwd : Text)  //used (public access)
	var $user : cs:C1710.UserEntity
	var $status : Object
	If ($email="")
		Web Form:C1735.setWarning("Please Enter Your Email !!")
		return "resetPwdPage"
	Else 
		If ($newPwd#"")
			$user:=ds:C1482.User.query("email = :1"; $email).first()
			If ($user#Null:C1517)
				$user.password:=$newPwd
				$status:=$user.save()
				If ($status.success)
					Web Form:C1735.setMessage("Password updated!")
					return "logInPage"
				Else 
					Web Form:C1735.setError("Error!")
				End if 
			Else 
				Web Form:C1735.setError("Email incorrect!")
			End if 
		Else 
			Web Form:C1735.setError("Please enter your new password!")
			return "resetPwdPage"
		End if 
	End if 
	
exposed Function signIn($email : Text; $pwd : Text; $confirmedPwd : Text; $lastName : Text; $firstName : Text) : Text  //used (Public access))
	var $employee : cs:C1710.UserEntity
	var $info : Object
	var $privileges : Collection
	If (($email="") || ($pwd="") || ($confirmedPwd="") || ($lastName="") || ($firstName=""))
		Web Form:C1735.setWarning("Please fill all required fields")
		return "signUpPage"
	Else 
		If ($pwd#$confirmedPwd)
			Web Form:C1735.setWarning("password don't match")
			return "signUpPage"
		Else 
			$employee:=ds:C1482.User.query("email = :1"; $email).first()
			If ($employee#Null:C1517)
				Web Form:C1735.setWarning("Email already exists")
			Else 
				$employee:=ds:C1482.User.new()
				$employee.firstName:=$firstName
				$employee.lastName:=$lastName
				$employee.email:=$email
				$employee.password:=$pwd
				// $employee.role = "Admin"
				$privileges:=["guest"]
				Session:C1714.setPrivileges($privileges)
				$info:=$employee.save()
				If ($info.success)
					Web Form:C1735.setMessage("Account created successfully!")
					return "logInPage"
				End if 
			End if 
		End if 
	End if 
	