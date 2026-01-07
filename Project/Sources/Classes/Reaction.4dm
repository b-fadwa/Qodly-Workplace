Class extends DataClass

exposed Function dropReaction($user : cs:C1710.UserEntity; $post : cs:C1710.PostEntity; $comment : cs:C1710.CommentEntity)->$result : Boolean
	var $reaction : cs:C1710.ReactionEntity
	If ($comment=Null:C1517)
		$reaction:=This:C1470.query("user.ID = :1 AND post.ID = :2"; $user.ID; $post.ID).first()
	Else 
		$reaction:=This:C1470.query("user.ID = :1 AND comment.ID = :2"; $user.ID; $comment.ID).first()
	End if 
	If ($reaction#Null:C1517)
		$reaction.drop()
		$result:=True:C214
	Else 
		$result:=False:C215
	End if 