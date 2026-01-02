Class extends DataClass
//gets current connected user
exposed Function getCurrentUser()->$user : cs:C1710.UserEntity
	If (Session:C1714.storage.payload#Null:C1517)
		$user:=This:C1470.all().query("email = :1"; Session:C1714.storage.payload.email).first()
	End if 
	
	//sets connected user status once he logs out
exposed Function logout()
	var $currentUser : cs:C1710.UserEntity:=This:C1470.getCurrentUser()
	$currentUser.status:={emoji: "🕛"; label: "Offline"}
	$currentUser.lastLogin:=Current time:C178()
	$currentUser.save()
	Web Form:C1735.setMessage("You got disconnected!")
	
exposed Function search($search : Text) : cs:C1710.UserSelection
	If ($search#"")
		return This:C1470.query("fullName = :1"; "@"+$search+"@")
	Else 
		return This:C1470.all()
	End if 
	
	//returns suggested friends for the current user
exposed Function suggestedFriends($currentUser : cs:C1710.UserEntity)
	var $friends : cs:C1710.UserSelection
	var $selection : cs:C1710.UserSelection:=This:C1470.all()
	If ($currentUser#Null:C1517)
		$friends:=$currentUser.friendships.user2.addInList($currentUser)
	End if 
	return $selection.minus($friends)
	