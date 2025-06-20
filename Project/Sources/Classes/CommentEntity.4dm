Class extends Entity

exposed function get isByConnUser()->$result : boolean  //used in viewPost (comments matrix)
	var $user: cs.UserEntity := ds.User.getCurrentUser()
	$result := (this.user.ID = $user.ID) ? true : false
	
exposed function get reactionConnUser()->$result : text  // used in viewPost (comments matrix)
	var $user: cs.UserEntity := ds.User.getCurrentUser()
	var $reaction: cs.ReactionEntity
	if (this.reactions # null)
		$reaction := this.reactions.query("user.ID = :1"; $user.ID).first()
		if ($reaction.reactionType = "Like")
			$result := "Liked"
		else 
			if ($reaction.reactionType = "Love")
				$result := "Loved"
			else 
				if ($reaction.reactionType = "Haha")
					$result := "Laughed"
				else 
					$result := "noReaction"
				end if 
			end if 
		end if 
	end if 
	
exposed function get hasReactions()->$result : boolean  // used in viewPost (comments matrix)
	$result := (this.reactions.length = 0) ? false : true
	
exposed function get hasLike()->$result : text  // used in viewPost (comments matrix)
	var $reactions: cs.ReactionSelection := this.reactions.query("reactionType = 'Like'")
	$result := ($reactions.length # 0) ? "yes" : "no"
	
exposed function get hasLove()->$result : text  // used in viewPost (comments matrix)
	var $reactions: cs.ReactionSelection := this.reactions.query("reactionType = 'Love'")
	$result := ($reactions.length # 0) ? "yes" : "no"
	
exposed function get hasHaha()->$result : text  // used in viewPost (comments matrix)
	var $reactions: cs.ReactionSelection := this.reactions.query("reactionType = 'Haha'")
	$result := ($reactions.length # 0) ? "yes" : "no"
	
exposed function createComment()  //used
	var $saved: object
	var $activity: cs.ActivityLogEntity
	if (this.content # "")
		$saved := this.save()
		if ($saved.success)
			//F : $activity log part + notif
			$activity := ds.ActivityLog.new()
			web Form["newComment"].hide()
			ds.Notification.createNotif(this.post; "New comment!"; null)
			$activity.createLog("You added a new comment under the post: "+string(this.post.title))  
			web Form.setMessage("Comment created successfully!")
		else 
			web Form.setError("Error!")
		end if 
	else 
		web Form.setError("Fill the comment's content!")
	end if 
