Class extends EntitySelection

exposed function setRead()  //used in notis part
	var $notif: cs.NotificationEntity
	for Each ($notif; this)
		$notif.isRead := true
		$notif.save()
	end for each 
	web Form.setMessage("Your notifications were marked as read!")
