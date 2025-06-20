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
	
exposed Function $doNotDisturb($doNotDisturb : Boolean) : Object  //used
	If ($doNotDisturb)
		return {emoji: "⛔"; label: "Do not disturb"}
	End if 