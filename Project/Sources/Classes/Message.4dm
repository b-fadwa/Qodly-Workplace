Class extends DataClass


//gets related messages between receivers and current user
exposed Function relatedMessages($receivers : cs:C1710.UserSelection; $currentUser : cs:C1710.UserEntity; $groupChat : cs:C1710.GroupEntity) : cs:C1710.MessageSelection
	If ($receivers.length=1)
		return This:C1470.query("((receiver.ID = :1 and sender.ID = :2) or (receiver.ID = :2 and sender.ID = :1)) and (isDraft = false or isDraft = null)"; $receivers.first().ID; $currentUser.ID)
	Else 
		If ($groupChat#Null:C1517)
			$groupChat.reload()
			return $groupChat.messages
		End if 
	End if 
	
	
exposed Function getMessages($otherUser : cs:C1710.UserEntity; $currentUser : cs:C1710.UserEntity) : cs:C1710.MessageSelection
	If (($currentUser.ID#Null:C1517) && ($otherUser.ID#Null:C1517))
		return This:C1470.query("(sender.ID = :1 AND receiver.ID = :2) OR (sender.ID = :2 AND receiver.ID = :1)"; $currentUser.ID; $otherUser.ID).orderBy("createdAt asc")
	End if 