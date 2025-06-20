Class extends DataClass

exposed function relatedMessages($receivers : cs.UserSelection; $currentUser : cs.UserEntity; $groupChat : cs.GroupEntity) : cs.MessageSelection//used
	if ($receivers.length = 1)
		return this.query("((receiver.ID = :1 and sender.ID = :2) or (receiver.ID = :2 and sender.ID = :1)) and (isDraft = false or isDraft = null)"; $receivers.first().ID; $currentUser.ID)
	else 
		if ($groupChat # null)
			$groupChat.reload()//bug 331
			return $groupChat.messages
		end if 
	end if 
