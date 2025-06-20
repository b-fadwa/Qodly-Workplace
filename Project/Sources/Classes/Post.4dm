Class extends DataClass

exposed function showPosts($sort : text)->$result : cs.PostSelection  // used in the page postsFeed
	var $previouslyV: cs.UserViewSelection
	var $result1; result2: cs.PostSelection
	var $user: cs.UserEntity := ds.User.getCurrentUser()  //F : can't we get all the posts.user.ID = currentUser.ID (line 8+9)??
	if ($sort = "recent")
		$result1 := this.query("group.groupMembers.user.ID = :1"; $user.ID)  // to select posts from groups where the connected $user is member of them
		result2 := this.query("visibility = 'public'")  // to select public wall posts
		$result := $result1.or(result2).or($user.posts.query("visibility = 'private'")).orderBy("createdAt desc")
	else 
		if ($sort = "viewed")
			$previouslyV := ds.UserView.query("$user.ID = :1 AND post.visibility = 'public'"; user.ID).orderBy("viewedAt desc")
			$result := $previouslyV.post
		end if 
	end if 
	
exposed function $search($search : text) : cs.PostSelection  //used
	return this.all().query("content = :1"; "@"+search+"@")