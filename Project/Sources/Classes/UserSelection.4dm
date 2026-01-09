Class extends EntitySelection

exposed Function addInList($selectedUser : cs:C1710.UserEntity) : cs:C1710.UserSelection
	var $selection : cs:C1710.UserSelection
	$selection:=This:C1470.copy()
	$selection.add($selectedUser)
	return $selection
	
exposed Function removeInList($selectedUser : cs:C1710.UserEntity) : cs:C1710.UserSelection
	var $selection : cs:C1710.UserSelection
	$selection:=This:C1470.copy()
	return $selection.minus($selectedUser)
	
exposed Function suggestedGroupMembers($currentGroup : cs:C1710.GroupEntity) : cs:C1710.UserSelection
	var $groupMembersUser : cs:C1710.UserSelection:=$currentGroup.groupMembers.user
	var $coll : Collection:=$groupMembersUser.ID
	return This:C1470.query("not (ID in :1)"; $coll)