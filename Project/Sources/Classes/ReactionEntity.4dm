Class extends Entity

exposed function get isFollowedByConnUser()->$result : boolean  // used in dialogs: postReactions and commentReactions
	var $user: cs.UserEntity := ds.User.getCurrentUser()
	var $friendship: cs.FriendshipEntity
	if (this.user.ID # $user.ID)
		$friendship := ds.Friendship.query("user1.ID = :1 AND user2.ID = :2"; $user.ID; this.user.ID).first()
		if ($friendship # null)
			$result := true
		else 
			$result := false
		end if 
	end if 
	
exposed function get isByConnUser()->$result : text  // used in dialogs: postReactions and commentReactions
	var $user: cs.UserEntity := ds.User.getCurrentUser()
	var $friendship: cs.FriendshipEntity
	if (this.user.ID = $user.ID)
		$result := "yes"
	else 
		$result := "no"
	end if 
	
exposed function newPostReaction($user : cs.UserEntity; $post : cs.PostEntity)  // used in all posts matrix' and the page viewPost
	var $result: boolean
	$result := ds.Reaction.dropReaction($user; $post; null)
	this.save()
	if (this.reactionType = "Like")
		web Form.setMessage("You have liked this $post!")
	else 
		if (this.reactionType = "Love")
			web Form.setMessage("You have loved this $post!")
		else 
			if (this.reactionType = "Haha")
				web Form.setMessage("You have laughed to this $post!")
			end if 
		end if 
	end if 
	
exposed function newCommentReaction($user : cs.UserEntity; $comment : cs.CommentEntity)  // used in comments matrix' in the page viewPost
	var $result: boolean
	$result := ds.Reaction.dropReaction($user; null; $comment)
	this.save()
	if (this.reactionType = "Like")
		web Form.setMessage("You have liked this comment!")
	else 
		if (this.reactionType = "Love")
			web Form.setMessage("You have loved this comment!")
		else 
			if (this.reactionType = "Haha")
				web Form.setMessage("You have laughed to this comment!")
			end if 
		end if 
	end if