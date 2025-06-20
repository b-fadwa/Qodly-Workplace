Class extends Entity

exposed Function setMailingToken()  //used
	//username = @ mail + token = password / sendgrid api key
	// trace
	This:C1470.label:="mailToken"
	If (This:C1470.userName#"" && This:C1470.token#"" && This:C1470.user#Null:C1517)
		This:C1470.save()
		Use (Session:C1714.storage)
			Session:C1714.storage.mailingCredentials:=New shared object:C1526("userName"; This:C1470.userName; "password"; This:C1470.token)
		End use 
		Web Form:C1735.setMessage("Token saved!")
		ds:C1482.Notification.createNotif(Null:C1517; "New token!"; This:C1470.user)
	Else 
		Web Form:C1735.setError("Fill the required fields!")
	End if 
	
	
exposed Function setZoomToken()  //used
	//username = accountID + token = clientID + additionalToken = secretID
	// trace
	This:C1470.label:="zoomToken"
	If ((This:C1470.userName#"") && (This:C1470.token#"") && (This:C1470.additionalToken#""))
		This:C1470.save()
		Use (Session:C1714.storage)
			Session:C1714.storage.zoomCredentials:=New shared object:C1526("accountID"; This:C1470.userName; "clientID"; This:C1470.token; "clientSecret"; This:C1470.additionalToken)
			Web Form:C1735.setMessage("Token saved!")
			ds:C1482.Notification.createNotif(Null:C1517; "New token!"; This:C1470.user)
		End use 
	Else 
		Web Form:C1735.setError("Fill the required fields!")
	End if 
	
	