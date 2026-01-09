Class extends DataClass

exposed Function getCurrentGroupMember($currentUser : cs:C1710.UserEntity; $selectedGroup : cs:C1710.GroupEntity)->$currentGroupMember : cs:C1710.GroupMemberEntity
	$currentGroupMember:=This:C1470.query("user.ID = :1 AND group.ID = :2"; $currentUser.ID; $selectedGroup.ID).first()
	
	//returns selected user groups
exposed Function groups($userSelected : cs:C1710.UserEntity; $display : Text)->$groups : cs:C1710.GroupSelection
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $groupsUser; groupsConnectedUser : cs:C1710.GroupSelection
	If ($display="all")
		$groups:=This:C1470.query("user.ID = :1 AND group.type # 'Chat'"; $userSelected.ID).group
	Else 
		$groupsUser:=This:C1470.query("user.ID = :1 AND group.type # 'Chat'"; $userSelected.ID).group
		groupsConnectedUser:=This:C1470.query("user.ID = :1 AND group.type # 'Chat'"; $user.ID).group
		$groups:=$groupsUser.and(groupsConnectedUser)
	End if 
	
exposed Function createMembers($group : cs:C1710.GroupEntity; $members : cs:C1710.UserSelection)
	var $member : cs:C1710.UserEntity
	var $newMember : cs:C1710.GroupMemberEntity
	For each ($member; $members)
		$newMember:=ds:C1482.GroupMember.new()
		$newMember.createMember($group; $member)
	End for each 
	
exposed Function membersNotAdmin($group : cs:C1710.GroupEntity)->$members : cs:C1710.GroupMemberSelection
	$members:=This:C1470.query("isAdmin = :1 AND group.ID = :2"; False:C215; $group.ID)