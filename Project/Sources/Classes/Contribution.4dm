Class extends DataClass

exposed function create($list : cs.UserSelection; $note : cs.NoteEntity)
	var $user: cs.UserEntity
	var $newContribution: cs.ContributionEntity
	for Each ($user; $list)
		$newContribution:=this.new()
		$newContribution.user:=$user
		$newContribution.note:=$note
		$newContribution.save()
	end for each
	web Form.setMessage("Contributors added!")