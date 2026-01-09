Class extends Entity

exposed Function get admins()->$admins : cs:C1710.UserSelection
	var $groupMembers : cs:C1710.GroupMemberSelection:=This:C1470.groupMembers.query("isAdmin = :1"; True:C214)
	If ($groupMembers.length#0)
		$admins:=$groupMembers.user
	End if 
	
exposed Function get isPinned()->$isPinned : Boolean
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $groupMembers : cs:C1710.GroupMemberSelection
	If ($currentUser#Null:C1517)
		$groupMembers:=This:C1470.groupMembers.query("user.ID = :1"; $currentUser.ID)
		If ($groupMembers.length#0)
			$isPinned:=$groupMembers.first().isPinned
		Else 
			$isPinned:=False:C215
		End if 
	End if 
	
exposed Function createGroup()
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $status : Object
	var $groupMember : cs:C1710.GroupMemberEntity
	$groupMember:=ds:C1482.GroupMember.new()
	$groupMember.group:=This:C1470
	$groupMember.user:=$currentUser
	$groupMember.joinedAt:=Current date:C33()
	$groupMember.isAdmin:=True:C214
	$groupMember.isPinned:=False:C215
	This:C1470.createdBy:=$currentUser
	This:C1470.createdAt:=Current date:C33()
	$status:=This:C1470.save()
	If ($status.success)
		$groupMember.save()
		Web Form:C1735.setMessage(This:C1470.name+" was created successfully !")
		Web Form:C1735.newGroup.hide()
	Else 
		Web Form:C1735.setError("Group creation failed !")
	End if 
	
exposed Function deleteGroup()
	This:C1470.groupMembers.drop()
	This:C1470.drop()
	Web Form:C1735.setMessage(String:C10(This:C1470.name)+" was successfully deleted !")
	Web Form:C1735.deleteDialog.hide()
	
exposed Function pinUnpin()
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $currentGroupMember : cs:C1710.GroupMemberEntity
	var $status : Object
	$currentGroupMember:=This:C1470.groupMembers.query("user.ID = :1 and group.ID = :2"; $currentUser.ID; This:C1470.ID).first()
	If ($currentGroupMember.isPinned)
		$currentGroupMember.isPinned:=False:C215
		$status:=$currentGroupMember.save()
		If ($status.success)
			Web Form:C1735.setMessage(String:C10(This:C1470.name)+" was unpinned successfully !")
		Else 
			Web Form:C1735.setError("Couldn't unpin "+This:C1470.name)
		End if 
	Else 
		$currentGroupMember.isPinned:=True:C214
		$status:=$currentGroupMember.save()
		If ($status.success)
			Web Form:C1735.setMessage(This:C1470.name+" was pinned successfully !")
		Else 
			Web Form:C1735.setError("Couldn't pin "+String:C10(This:C1470.name))
		End if 
	End if 
	
exposed Function leaveGroup()
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $currentGroupMember : cs:C1710.GroupMemberEntity
	var $status : Object
	$currentGroupMember:=This:C1470.groupMembers.query("user.ID = :1 and group.ID = :2"; $currentUser.ID; This:C1470.ID).first()
	$status:=$currentGroupMember.drop()
	If ($status.success)
		Web Form:C1735.setMessage("You left the group !")
		Web Form:C1735.leaveDialog.hide()
	Else 
		Web Form:C1735.setError("Something went wrong !")
	End if 
	
	
exposed Function joinGroup() : cs:C1710.GroupSelection
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $newGroupMember : cs:C1710.GroupMemberEntity:=ds:C1482.GroupMember.new()
	var $status : Object
	$newGroupMember.group:=This:C1470
	$newGroupMember.user:=$currentUser
	$newGroupMember.isPinned:=False:C215
	$newGroupMember.isAdmin:=False:C215
	$newGroupMember.joinedAt:=Current date:C33()
	$status:=$newGroupMember.save()
	If ($status.success)
		Web Form:C1735.setMessage("Welcome to "+String:C10(This:C1470.name))
		return ds:C1482.Group.all().minus($currentUser.myGroups)
	Else 
		Web Form:C1735.setError("An error occured when joining the group !")
	End if 
	
	//creates chat group
exposed Function chatGroupInit($allReceivers : cs:C1710.UserSelection; $currentUser : cs:C1710.UserEntity) : cs:C1710.GroupEntity
	$allReceivers:=$allReceivers.addInList($currentUser)
	var $formulaQ : 4D:C1709.Function:=Formula:C1597(This:C1470.groupMembers.user.ID.equal($allReceivers.ID))
	var $groups : cs:C1710.GroupSelection:=ds:C1482.Group.query(":1 and type = 'Chat'"; $formulaQ)
	var $chatGroup : cs:C1710.GroupEntity
	var $groupMember : cs:C1710.GroupMemberEntity
	var $receiver : cs:C1710.UserEntity
	If ($groups.length#0)
		$chatGroup:=$groups.first()
	End if 
	If ($chatGroup=Null:C1517)
		If ($allReceivers.length>2)
			This:C1470.type:="Chat"
			This:C1470.name:="Chat group!"
			This:C1470.createdBy:=$currentUser
			This:C1470.createdAt:=Current date:C33()
			This:C1470.save()
			For each ($receiver; $allReceivers)
				$groupMember:=ds:C1482.GroupMember.new()
				$groupMember.createMember(This:C1470; $receiver)
			End for each 
			return This:C1470
		End if 
	Else 
		return $chatGroup.first()
	End if 
	
exposed Function returnMessage() : cs:C1710.MessageEntity
	return This:C1470.messages.first()