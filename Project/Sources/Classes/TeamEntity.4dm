Class extends Entity

exposed function setTeam($auto : boolean; $currentUser : cs.UserEntity) : cs.TeamEntity  //used
	var $status: object
	var $teamMember: cs.TeamMemberEntity
	if ((this.label # "") && (this.description # ""))
		this.manager := $currentUser
		if ($auto)
			$teamMember := ds.TeamMember.new()
			$teamMember.user := $currentUser
			$teamMember.team := this
			$teamMember.save()
		end if 
		$status := this.save()
		if ($status.success)
			web Form.setMessage("Team created successfully!")
		else 
			web Form.setError("Error!")
		end if 
		web Form["newTeam"].hide()
	else 
		web Form.setError("Fill the fields!")
	end if 
	return this
	
exposed function delete()  //used
	var $saved: object
	var $droppedSel: cs.TeamMemberSelection
	$droppedSel := this.teamMembers.drop()
	if ($droppedSel.length = 0)
		$saved := this.drop()
		if ($saved.success)
			web Form.setMessage("Team removed sucessfully!")
		else 
			web Form.setError("Error")
		end if 
	else 
		web Form.setError("Error")
	end if