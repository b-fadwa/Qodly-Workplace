Class extends DataStoreImplementation

exposed Function returnCurrentDate() : Date
	return Current date:C33()
	
exposed Function returnCurrentTime() : Text
	return String:C10(Current time:C178(); HH MM SS:K7:1)
	
	//returns format when not disturb
exposed Function doNotDisturb($doNotDisturb : Boolean) : Object
	If ($doNotDisturb)
		return {emoji: "⛔"; label: "Do not disturb"}
	End if 
	
	// Authenticates a user and assigns role-based or guest privileges using session management
exposed Function authentify($email : Text; $password : Text) : Boolean
	If (($email="") && ($password=""))
		return Session:C1714.setPrivileges(["guest"; "guestPromoted"])
	End if 
	var $user : cs:C1710.UserEntity:=ds:C1482.User.query("email = :1"; $email).first()
	If ($user#Null:C1517)
		If (Verify password hash:C1534($password; $user.password))
			Use (Session:C1714.storage)
				Session:C1714.storage.payload:=New shared object:C1526("ID"; $user.ID; "email"; $user.email; "role"; $user.role)
			End use 
			Session:C1714.setPrivileges("login")
			$user.status:={emoji: Null:C1517; label: "Online"}
			$user.save()
		End if 
		return True:C214
	Else 
		Web Form:C1735.setWarning("The username or password is incorrect. Please try again!")
		return False:C215
	End if 
	
	//used to get the manifest structure for the Home page
exposed Function getManifestObject() : Object
	var $manifestFile : 4D:C1709.File
	var $manifestObject : Object
	$manifestFile:=File:C1566("/PACKAGE/Project/Sources/Shared/manifest.json")
	$manifestObject:=JSON Parse:C1218($manifestFile.getText())
	return $manifestObject
	
	//used to generate data
exposed Function generateData()
	var $newData : cs:C1710.FakeData:=cs:C1710.FakeData.new()
	$newData.dropData()
	$newData.generateData()
	Web Form:C1735.setMessage("Data generated!")