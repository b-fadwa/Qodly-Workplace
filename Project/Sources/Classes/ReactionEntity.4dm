Class extends Entity

exposed Function get isFollowedByConnUser()->$result : Boolean
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
	
exposed Function get isByConnUser()->$result : Text
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $friendship : cs:C1710.FriendshipEntity
	If (This:C1470.user.ID=$user.ID)
		$result:="yes"
	Else 
		$result:="no"
	End if 
	
exposed Function newPostReaction($user : cs:C1710.UserEntity; $post : cs:C1710.PostEntity)
	var $result : Boolean
	var $status : Object
	$result:=ds:C1482.Reaction.dropReaction($user; $post; Null:C1517)
	$status:=This:C1470.save()
	If (This:C1470.reactionType="Like")
		Web Form:C1735.setMessage("You have liked this post!")
	Else 
		If (This:C1470.reactionType="Love")
			Web Form:C1735.setMessage("You have loved this post!")
		Else 
			If (This:C1470.reactionType="Haha")
				Web Form:C1735.setMessage("You have laughed to this post!")
			End if 
		End if 
	End if 
	
exposed Function newCommentReaction($user : cs:C1710.UserEntity; $comment : cs:C1710.CommentEntity)
	var $result : Boolean
	$result:=ds:C1482.Reaction.dropReaction($user; Null:C1517; $comment)
	This:C1470.save()
	If (This:C1470.reactionType="Like")
		Web Form:C1735.setMessage("You have liked this comment!")
	Else 
		If (This:C1470.reactionType="Love")
			Web Form:C1735.setMessage("You have loved this comment!")
		Else 
			If (This:C1470.reactionType="Haha")
				Web Form:C1735.setMessage("You have laughed to this comment!")
			End if 
		End if 
	End if 