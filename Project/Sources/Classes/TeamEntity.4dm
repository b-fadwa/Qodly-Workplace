Class extends Entity

exposed Function setTeam($auto : Boolean; $currentUser : cs:C1710.UserEntity) : cs:C1710.TeamEntity
	var $status : Object
	var $teamMember : cs:C1710.TeamMemberEntity
	If ((This:C1470.label#"") && (This:C1470.description#""))
		This:C1470.manager:=$currentUser
		If ($auto)
			$teamMember:=ds:C1482.TeamMember.new()
			$teamMember.user:=$currentUser
			$teamMember.team:=This:C1470
			$teamMember.save()
		End if 
		$status:=This:C1470.save()
		If ($status.success)
			Web Form:C1735.setMessage("Team created successfully!")
		Else 
			Web Form:C1735.setError("Error!")
		End if 
		Web Form:C1735["newTeam"].hide()
	Else 
		Web Form:C1735.setError("Fill the fields!")
	End if 
	return This:C1470
	
exposed Function delete()
	var $saved : Object
	var $droppedSel : cs:C1710.TeamMemberSelection
	$droppedSel:=This:C1470.teamMembers.drop()
	If ($droppedSel.length=0)
		$saved:=This:C1470.drop()
		If ($saved.success)
			Web Form:C1735.setMessage("Team removed sucessfully!")
		Else 
			Web Form:C1735.setError("Error")
		End if 
	Else 
		Web Form:C1735.setError("Error")
	End if 