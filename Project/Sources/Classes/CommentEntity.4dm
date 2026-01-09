Class extends Entity

exposed Function get isByConnUser()->$result : Boolean
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	$result:=(This:C1470.user.ID=$user.ID) ? True:C214 : False:C215
	
exposed Function get reactionConnUser()->$result : Text
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $reaction : cs:C1710.ReactionEntity
	If (This:C1470.reactions#Null:C1517)
		$reaction:=This:C1470.reactions.query("user.ID = :1"; $user.ID).first()
		If ($reaction.reactionType="Like")
			$result:="Liked"
		Else 
			If ($reaction.reactionType="Love")
				$result:="Loved"
			Else 
				If ($reaction.reactionType="Haha")
					$result:="Laughed"
				Else 
					$result:="noReaction"
				End if 
			End if 
		End if 
	End if 
	
	
	//check type of comment reaction (like, love, haha..)
exposed Function get hasReactions()->$result : Boolean
	$result:=(This:C1470.reactions.length=0) ? False:C215 : True:C214
	
exposed Function get hasLike()->$result : Text
	var $reactions : cs:C1710.ReactionSelection:=This:C1470.reactions.query("reactionType = 'Like'")
	$result:=($reactions.length#0) ? "yes" : "no"
	
exposed Function get hasLove()->$result : Text
	var $reactions : cs:C1710.ReactionSelection:=This:C1470.reactions.query("reactionType = 'Love'")
	$result:=($reactions.length#0) ? "yes" : "no"
	
exposed Function get hasHaha()->$result : Text
	var $reactions : cs:C1710.ReactionSelection:=This:C1470.reactions.query("reactionType = 'Haha'")
	$result:=($reactions.length#0) ? "yes" : "no"
	
exposed Function createComment()
	var $saved : Object
	var $activity : cs:C1710.ActivityLogEntity
	If (This:C1470.content#"")
		$saved:=This:C1470.save()
		If ($saved.success)
			$activity:=ds:C1482.ActivityLog.new()
			Web Form:C1735["newComment"].hide()
			ds:C1482.Notification.createNotif(This:C1470.post; "New comment!"; Null:C1517)
			$activity.createLog("You added a new comment under the post: "+String:C10(This:C1470.post.title))
			Web Form:C1735.setMessage("Comment created successfully!")
		Else 
			Web Form:C1735.setError("Error!")
		End if 
	Else 
		Web Form:C1735.setError("Fill the comment's content!")
	End if 
	