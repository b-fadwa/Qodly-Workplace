Class extends DataClass

exposed Function dropTeamMember($user : cs:C1710.UserEntity)  // called in the function below ($addUserToTeams)
	var $teamMembers : cs:C1710.TeamMemberSelection
	$teamMembers:=This:C1470.query("user.ID = :1"; $user.ID)
	If ($teamMembers#Null:C1517)
		$teamMembers.drop()
	End if 
	
exposed Function addUserToTeams($user : cs:C1710.UserEntity; $teams : cs:C1710.TeamSelection)  // used in the page "seeProfile" - tab "about" (dialog "editYourTeams")
	var $team : cs:C1710.TeamEntity
	var $teamMember : cs:C1710.TeamMemberEntity
	This:C1470.dropTeamMember($user)  //F: why you drop the other relations??
	For each ($team; $teams)
		$teamMember:=This:C1470.new()
		$teamMember.user:=$user
		$teamMember.team:=$team
		$teamMember.save()
	End for each 
	Web Form:C1735.setMessage("Your selected teams are edited successfully!")
	
exposed Function create($users : cs:C1710.UserSelection; $team : cs:C1710.TeamEntity)
	var $user : cs:C1710.UserEntity
	var $newTeamMember : cs:C1710.TeamMemberEntity
	For each ($user; $users)
		$newTeamMember:=This:C1470.new()
		$newTeamMember.create($user; $team)
	End for each 
	