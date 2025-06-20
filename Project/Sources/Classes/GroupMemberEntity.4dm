Class extends Entity

exposed function createMember($group : cs.GroupEntity; $member : cs.UserEntity)  //used 
	this.group := $group
	this.user := $member
	this.joinedAt := current Date()
	this.isAdmin := false
	this.isPinned := false
	this.save()
