Class extends EntitySelection

exposed function addInList($selectedUser : cs.UserEntity) : cs.UserSelection  //used
	var $selection: cs.UserSelection
	$selection := this.copy()
	$selection.add($selectedUser)
	return $selection
	
exposed function removeInList($selectedUser : cs.UserEntity) : cs.UserSelection  //used
	var $selection: cs.UserSelection
	$selection := this.copy()
	return $selection.minus($selectedUser)
	
exposed function suggestedGroupMembers($currentGroup : cs.GroupEntity) : cs.UserSelection
	var $groupMembersUser: cs.UserSelection := $currentGroup.groupMembers.user
	var $coll: collection := $groupMembersUser.ID
	return this.query("not (ID in :1)"; $coll)