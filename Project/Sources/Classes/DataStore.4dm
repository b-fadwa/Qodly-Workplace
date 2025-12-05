Class extends DataStoreImplementation

exposed Function returnCurrentDate() : Date  //used in index
	return Current date:C33()
	
exposed Function returnCurrentTime() : Text  //used in index
	return String:C10(Current time:C178(); HH MM SS:K7:1)
	
exposed Function returnLandingPage()  //used in index
	If (Session:C1714.storage.payload.ID#Null:C1517)
		return "index"
	Else 
		return "logInPage"
	End if 
	
exposed Function doNotDisturb($doNotDisturb : Boolean) : Object  //used
	If ($doNotDisturb)
		return {emoji: "⛔"; label: "Do not disturb"}
	End if 
	
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
	
exposed Function getManifestObject() : Object
	var $manifestFile : 4D:C1709.File
	var $manifestObject : Object
	$manifestFile:=File:C1566("/PACKAGE/Project/Sources/Shared/manifest.json")
	$manifestObject:=JSON Parse:C1218($manifestFile.getText())
	return $manifestObject
	
	
exposed Function generateData()
	var $newData : cs:C1710.FakeData:=cs:C1710.FakeData.new()
	// drop DATA
	$newData.dropData()
	// init DATA
	$newData.generateData()
	Web Form:C1735.setMessage("Data generated!")