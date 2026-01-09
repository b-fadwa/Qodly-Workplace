Class extends DataClass

exposed Function showPosts($sort : Text)->$result : cs:C1710.PostSelection
	var $previouslyV : cs:C1710.UserViewSelection
	var $result1; $result2 : cs:C1710.PostSelection
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	If ($sort="recent")
		$result1:=This:C1470.query("group.groupMembers.user.ID = :1"; $user.ID)
		$result2:=This:C1470.query("visibility = 'public'")
		$result:=$result1.or($result2).or($user.posts.query("visibility = 'private'")).orderBy("createdAt desc")
	Else 
		If ($sort="viewed")
			$previouslyV:=ds:C1482.UserView.query("user.ID = :1 AND post.visibility = 'public'"; $user.ID).orderBy("viewedAt desc")
			$result:=$previouslyV.post
		End if 
	End if 
	
exposed Function search($search : Text) : cs:C1710.PostSelection
	return This:C1470.all().query("content = :1"; "@"+$search+"@")