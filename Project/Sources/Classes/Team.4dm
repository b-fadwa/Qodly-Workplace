Class extends DataClass

exposed Function search($search : Text) : cs:C1710.TeamSelection  //used
	If ($search#"")
		return This:C1470.query("label = :1"; "@"+$search+"@")
	Else 
		return This:C1470.all()
	End if 
	
exposed Function selectFromSelection($user : cs:C1710.UserEntity)->$selection : cs:C1710.TeamSelection  // used in the page "seeProfile" - tab "about"
	$selection:=This:C1470.all().minus($user.userTeams)