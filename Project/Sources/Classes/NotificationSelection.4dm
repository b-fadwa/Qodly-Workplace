Class extends EntitySelection


//read/unreads a group of notifications at once
exposed Function setRead()
	var $notif : cs:C1710.NotificationEntity
	For each ($notif; This:C1470)
		$notif.isRead:=True:C214
		$notif.save()
	End for each 
	Web Form:C1735.setMessage("Your notifications were marked as read!")
	