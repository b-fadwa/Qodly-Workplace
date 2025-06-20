Class extends DataClass

exposed function dropReaction($user : cs.UserEntity; $post : cs.PostEntity; $comment : cs.CommentEntity) ->$result : boolean
	var $reaction: cs.ReactionEntity
	if($comment = null)
		$reaction := ds.Reaction.query("user.ID = :1 AND post.ID = :2"; $user.ID; $post.ID).first()
	else
		$reaction := ds.Reaction.query("user.ID = :1 AND comment.ID = :2"; $user.ID; $comment.ID).first()
	end if
	if ($reaction # null)
		$reaction.drop()
		$result := true
	else
		$result := false
	end if