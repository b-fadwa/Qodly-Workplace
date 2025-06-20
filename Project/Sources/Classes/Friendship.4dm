Class extends DataClass

exposed Function search($search : Text) : cs:C1710.FriendshipSelection  //used in groupsPage(people)
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	If ($search#"")
		return This:C1470.all().query("user1.ID = :1 AND (user2.firstName = :2 OR user2.lastName = :2)"; $currentUser.ID; "@"+$search+"@")
	Else 
		return This:C1470.all().query("user1.ID = :1"; $currentUser.ID)
	End if 
	
	// used in the page seeProfile (buttons $follow / unfollow) if not the connected $user
exposed Function checkIfExisted($friend : cs:C1710.UserEntity)->$result : cs:C1710.FriendshipEntity
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	If ($friend.ID#$currentUser.ID)
		$result:=This:C1470.query("user1.ID = :1 AND user2.ID = :2"; $currentUser.ID; $friend.ID).first()
	End if 
	
exposed Function dropFriendship($friend : cs:C1710.UserEntity)  // used in the page seeProfile if not the connected $user (to unfollow $friend)
	var $activityLog : cs:C1710.ActivityLogEntity
	var $entity : cs:C1710.FriendshipEntity:=This:C1470.checkIfExisted($friend)
	If ($entity#Null:C1517)
		$entity.drop()
		Web Form:C1735.setMessage("You have unfollowed "+$friend.firstName)
		//F : activity log part
		$activityLog:=ds:C1482.ActivityLog.new()
		$activityLog.createLog("You have unfollowed "+$friend.fullName)
	End if 
	
exposed Function showFollowers($follow : Text; $user : cs:C1710.UserEntity)->$result : cs:C1710.FriendshipSelection  // used in the page seeProfile (friends tab)
	If ($follow="following")  // selected (or connected) $user follows users
		$result:=This:C1470.query("user1.ID = :1"; $user.ID)
	Else   // users that $follow the connected $user (this part is seen only by the connected $user)
		$result:=This:C1470.query("user2.ID = :1"; $user.ID)
	End if 
	
exposed Function createFriendship($friend : cs:C1710.UserEntity)
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $entity : cs:C1710.FriendshipEntity:=This:C1470.checkIfExisted($friend)
	var $activityLog : cs:C1710.ActivityLogEntity
	var $status : Object
	If ($entity=Null:C1517)
		$entity:=ds:C1482.Friendship.new()
		$entity.createdAt:=Current date:C33()
		$entity.user1:=$currentUser
		$entity.user2:=$friend
		$status:=$entity.save()
		If ($status.success)
			//F : activity log part
			$activityLog:=ds:C1482.ActivityLog.new()
			$activityLog.createLog("You followed "+String:C10($friend.fullName))
			//F : notif part
			ds:C1482.Notification.createNotif(Null:C1517; "New follow!"; $friend)
			Web Form:C1735.setMessage("You followed "+String:C10($friend.fullName))
		Else 
			Web Form:C1735.setError("You can't follow this user, try again later !")
		End if 
	End if 