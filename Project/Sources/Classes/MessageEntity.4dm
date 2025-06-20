Class extends Entity

exposed function create($receivers : cs.UserSelection; $currentUser : cs.UserEntity; $ChatGroup : cs.GroupEntity)  //used 
	var $receiver: cs.UserEntity
	this.createdAt := current Date()
	this.atHour := current Time()
	this.sender := $currentUser
	this.isDraft := this.isDraft ? true : false
	if ($receivers.length = 1)
		$receiver := $receivers.first()
		// if (this.isDraft = false)
		this.receiver := $receiver
		// end 
		this.type := "Direct"
		this.save()
		ds.Notification.createNotif(null; "New message!"; $receiver)
	else 
		// if (this.isDraft = false)
		this.receiverGroup := $ChatGroup
		// end 
		this.type := "Group"
		this.save()
			for Each ($receiver; $receivers)
				ds.Notification.createNotif(null; "New message!"; $receiver)
			end for each 
	end if 
	
exposed function get isItMute()->$isItMute : text  //used
	return this.isMuted = true ? "Umute" : "Mute"
	
exposed function setMute()  //used
	var $saved: object
	this.isMuted := this.isMuted = null ? true : not(this.isMuted)
	$saved := this.save()
	if ($saved.success)
		web Form.setMessage("Message muted!")
	else 
		web Form.setError("Error")
	end if 
	
exposed function get isItRead->$isItRead : text  //used
	return this.isRead = true ? "unread" : "read"
	
exposed function setRead()  //used
	var $saved: object
	this.isRead := this.isRead = null ? true : not(this.isRead)
	$saved := this.save()
	if ($saved.success)
		web Form.setMessage("Message read!")
	else 
		web Form.setError("Error")
	end if 
	
exposed function get isItPinned()->$isItPinned : text  //used
	return this.isPinned = true ? "Unpin" : "Pin"
	
exposed function setPinned()  //used
	var $saved: object
	this.isPinned := this.isPinned = null ? true : not(this.isPinned)
	$saved := this.save()
	if ($saved.success)
		web Form.setMessage("Message pinned!")
	else 
		web Form.setError("Error")
	end if 
	
exposed function get isItHidden->$isItHidden : text  //used
	return this.isHidden = true ? "Unhide" : "Hide"
	
exposed function setHidden()  //used
	var $saved: object
	this.isHidden := this.isHidden = null ? true : not(this.isHidden)
	$saved := this.save()
	if ($saved.success)
		web Form.setMessage("Message hidden!")
	else 
		web Form.setError("Error")
	end if 
	
	
exposed function leaveChatGroup($currentUser : cs.UserEntity)  //used
	var $chatGroupMembers: cs.UserSelection
	var $groupMember: cs.UserEntity
	var $dropped: object
	$chatGroupMembers := this.receiverGroup.groupMembers.query("user.ID = :1"; $currentUser.ID)
	if ($chatGroupMembers.length # 0)
		$groupMember := $chatGroupMembers.first()
		$dropped := $groupMember.drop()
		if ($dropped.success)
			web Form.setMessage("You left this chat group!")
		else 
			web Form.setError("Error!")
		end if 
	end if