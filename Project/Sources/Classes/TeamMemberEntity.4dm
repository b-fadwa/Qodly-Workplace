Class extends Entity


exposed function create($user : cs.UserEntity; $team : cs.TeamEntity)
	this.user := $user
	this.team := $team
	this.save()