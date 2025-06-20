Class extends DataClass

local function initNotif($content : text; $toUser : cs.UserEntity; $notifType : text)  //used
	var $newNotif: cs.NotificationEntity
	var $saved: object
	$newNotif := this.new()
	$newNotif.user := $toUser
	$newNotif.type := $notifType
	$newNotif.content := $content
	$newNotif.isRead := false
	$saved := $newNotif.save()
	// if (session.storage.notification.destination = "By email")
	if (this.user.notificationDestination = "By email")
		$newNotif.sendByMail()
	end if 
	
exposed function createNotif($post : cs.PostEntity; $notifType : text; $receivingUser : cs.UserEntity)  //used
	//create $post ->$new notif
	//create comment ->$new notif
	//$new follow->$new notif
	//$new message ->$new notif
	var $newNotif: cs.NotificationEntity
	var $allUsers: cs.UserSelection
	var $currentUser: cs.UserEntity := ds.User.getCurrentUser()
	var $user: cs.UserEntity
	// trace
	case of 
		: ($notifType = "New follow!")
			this.initNotif("A new user just followed you!"; $receivingUser; "New follow!")
		: ($notifType = "New post!")
			// $allUsers = ds.User.all().minus($post.user) ?
			$allUsers := ds.User.all().minus($currentUser)
			for Each ($user; $allUsers)
				this.initNotif(string($post.user.fullName)+" wrote a new Post in the feed!"; $user; "New post!")
			end for each 
		: ($notifType = "New comment!")
			// $allUsers = ds.User.all().minus($post.user) ? 
			$allUsers := ds.User.all().minus($currentUser)
			
			for Each ($user; $allUsers)
				this.initNotif(string($post.title)+"'s post has a new post comment!"; $user; "New comment!")
			end for each 
		: ($notifType = "New message!")
			this.initNotif("You have a new message!"; $receivingUser; "New message!")
		: ($notifType = "New token!")
			this.initNotif("Your token settings were updated!!"; $receivingUser; "New token!")
		else 
	end case 
	
exposed function setNotifDestination($destination : text)  //used
	use (session.storage)  //by mail or in workplace 
		session.storage.notification := new Shared Object("destination"; $destination)
	end use 
	web Form.setMessage("Choice updated")