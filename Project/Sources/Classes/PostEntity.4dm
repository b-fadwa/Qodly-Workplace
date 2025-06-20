Class extends Entity

exposed Function get WallOrGroup()->$result : Text  // used in all posts matrix'
	$result:=(This:C1470.group=Null:C1517) ? "wall" : "group"
	
exposed Function get containImage()->$result : Boolean  // used in all posts matrix' after adding the attribute "image"
	$result:=(This:C1470.image=Null:C1517) ? False:C215 : True:C214
	
exposed Function get containMediaURL()->$result : Boolean  // used in all posts matrix' after adding the attribute "mediaUrl"
	$result:=(This:C1470.mediaUrl=Null:C1517) ? False:C215 : True:C214
	
exposed Function get isViewed()->$result : Boolean  // used in all posts matrix'
	$result:=(This:C1470.userViews.length=0) ? False:C215 : True:C214
	
exposed Function get hasReactions()->$result : Boolean  // used in all posts matrix'
	$result:=(This:C1470.reactions.length=0) ? False:C215 : True:C214
	
exposed Function get hasLike()->$result : Text  // used in all posts matrix'
	var $reactions : cs:C1710.ReactionSelection:=This:C1470.reactions.query("reactionType = 'Like'")
	$result:=($reactions.length#0) ? "yes" : "no"
	
exposed Function get hasLove()->$result : Text  // used in all posts matrix'
	var $reactions : cs:C1710.ReactionSelection:=This:C1470.reactions.query("reactionType = 'Love'")
	$result:=($reactions.length#0) ? "yes" : "no"
	
exposed Function get hasHaha()->$result : Text  // used in all posts matrix'
	var $reactions : cs:C1710.ReactionSelection:=This:C1470.reactions.query("reactionType = 'Haha'")
	$result:=($reactions.length#0) ? "yes" : "no"
	
exposed Function get hasComments()->$result : Boolean  // used in all posts matrix'
	$result:=(This:C1470.comments.length=0) ? False:C215 : True:C214
	
exposed Function get reactionConnUser()->$result : Text  // used in all posts matrix'
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
exposed Function createPost()  // used 
	var $saved : Object
	var $activityLog : cs:C1710.ActivityLogEntity
	If ((This:C1470.content#"") && (This:C1470.visibility#""))
		This:C1470.createdAt:=Current date:C33()
		$saved:=This:C1470.save()
		If ($saved.success)
			$activityLog:=ds:C1482.ActivityLog.new()
			$activityLog.createLog("You added a new post in the feed !: "+String:C10(This:C1470.title))  //testing
			Web Form:C1735["newPost"].hide()
			If (This:C1470.visibility="public")
				ds:C1482.Notification.createNotif(This:C1470; "New post!"; Null:C1517)
			End if 
			Web Form:C1735.setMessage("Post created successfully!")
		Else 
			Web Form:C1735.setError("Error!")
		End if 
		
	Else 
		Web Form:C1735.setError("Fill the required fields!")
	End if 