Class extends Entity

exposed Alias postContent post.title  //used

exposed Function checkIfViewed($user : cs:C1710.UserEntity; $post : cs:C1710.PostEntity)  // used in all posts matrix' (when clicking on its content)
	var $userView : cs:C1710.UserViewEntity
	$userView:=ds:C1482.UserView.query("user.ID = :1 AND post.ID = :2"; $user.ID; $post.ID).first()
	If ($userView=Null:C1517)
		This:C1470.save()
	End if 
	
exposed Function get isFollowedByConnUser()->$result : Boolean  // used in dialog "postViewers"
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $friendship : cs:C1710.FriendshipEntity
	If (This:C1470.user.ID#$user.ID)
		$friendship:=ds:C1482.Friendship.query("user1.ID = :1 AND user2.ID = :2"; $user.ID; This:C1470.user.ID).first()
		If ($friendship#Null:C1517)
			$result:=True:C214
		Else 
			$result:=False:C215
		End if 
	End if 
	
exposed Function get isByConnUser()->$result : Text  // used in dialog "postViewers"
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $friendship : cs:C1710.FriendshipEntity
	If (This:C1470.user.ID=$user.ID)
		$result:="yes"
	Else 
		$result:="no"
	End if 
	