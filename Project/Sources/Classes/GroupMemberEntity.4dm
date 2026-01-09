Class extends Entity

exposed Function createMember($group : cs:C1710.GroupEntity; $member : cs:C1710.UserEntity)
	This:C1470.group:=$group
	This:C1470.user:=$member
	This:C1470.joinedAt:=Current date:C33()
	This:C1470.isAdmin:=False:C215
	This:C1470.isPinned:=False:C215
	This:C1470.save()
	