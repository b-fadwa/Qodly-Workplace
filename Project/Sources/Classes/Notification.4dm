Class extends DataClass

local Function initNotif($content : Text; $toUser : cs:C1710.UserEntity; $notifType : Text)
	var $newNotif : cs:C1710.NotificationEntity
	var $saved : Object
	$newNotif:=This:C1470.new()
	$newNotif.user:=$toUser
	$newNotif.type:=$notifType
	$newNotif.content:=$content
	$newNotif.isRead:=False:C215
	$saved:=$newNotif.save()
	If (This:C1470.user.notificationDestination="By email")
		$newNotif.sendByMail()
	End if 
	
	//create notif for new post creation, new following, new comment...
exposed Function createNotif($post : cs:C1710.PostEntity; $notifType : Text; $receivingUser : cs:C1710.UserEntity)
	var $newNotif : cs:C1710.NotificationEntity
	var $allUsers : cs:C1710.UserSelection
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $user : cs:C1710.UserEntity
	Case of 
		: ($notifType="New follow!")
			This:C1470.initNotif("A new user just followed you!"; $receivingUser; "New follow!")
		: ($notifType="New post!")
			$allUsers:=ds:C1482.User.all().minus($currentUser)
			For each ($user; $allUsers)
				This:C1470.initNotif(String:C10($post.user.fullName)+" wrote a new Post in the feed!"; $user; "New post!")
			End for each 
		: ($notifType="New comment!")
			$allUsers:=ds:C1482.User.all().minus($currentUser)
			
			For each ($user; $allUsers)
				This:C1470.initNotif(String:C10($post.title)+"'s post has a new post comment!"; $user; "New comment!")
			End for each 
		: ($notifType="New message!")
			This:C1470.initNotif("You have a new message!"; $receivingUser; "New message!")
		: ($notifType="New token!")
			This:C1470.initNotif("Your token settings were updated!!"; $receivingUser; "New token!")
		Else 
	End case 
	
exposed Function setNotifDestination($destination : Text)
	Use (Session:C1714.storage)
		Session:C1714.storage.notification:=New shared object:C1526("destination"; $destination)
	End use 
	Web Form:C1735.setMessage("Choice updated")