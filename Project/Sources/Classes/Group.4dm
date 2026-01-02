Class extends DataClass


//get suggested groups
exposed Function suggestedGroups($currentUser : cs:C1710.UserEntity)->$suggGroups : cs:C1710.GroupSelection
	var $myGroups : cs:C1710.GroupSelection
	$suggGroups:=This:C1470.all().minus($currentUser.myGroups)
	
	//search groups by type
exposed Function search($searchType : Text; $search : Text) : cs:C1710.GroupSelection
	var $currentUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $pinned : cs:C1710.GroupSelection:=This:C1470.query("isPinned = :1 AND groupMembers.user.ID = :2"; True:C214; $currentUser.ID)
	Case of 
		: ($searchType="mygroups")
			If (($search#"") && ($search#Null:C1517))
				return $currentUser.myGroups.query("name = :1"; "@"+$search+"@")
			Else 
				return $currentUser.myGroups
			End if 
		: ($searchType="managedGroups")
			If (($search#"") && ($search#Null:C1517))
				return $currentUser.managedGroups.query("name = :1"; "@"+$search+"@")
			Else 
				return $currentUser.managedGroups
			End if 
		: ($searchType="pinnedGroups")
			If (($search#"") && ($search#Null:C1517))
				return $pinned.query("name = :1"; "@"+$search+"@")
			Else 
				return $pinned
			End if 
		: ($searchType="all")
			return This:C1470.all().query("name = :1 "; "@"+$search+"@")
	End case 
	
exposed Function searchGroupsNotChat($search : Text)->$groups : cs:C1710.GroupSelection
	$groups:=This:C1470.search("mygroups"; $search).query("type # :1"; "chat")