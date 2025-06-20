Class extends DataClass

exposed Function getCurrentGroupMember($currentUser : cs:C1710.UserEntity; $selectedGroup : cs:C1710.GroupEntity)->$currentGroupMember : cs:C1710.GroupMemberEntity
	$currentGroupMember:=This:C1470.query("user.ID = :1 AND group.ID = :2"; $currentUser.ID; $selectedGroup.ID).first()
	
/*exposed function isMember($group : cs.GroupEntity)->$result : boolean // used: function needed for states
	var $gm: cs.GroupMemberEntity
	var $user: cs.UserEntity := ds.User.getCurrentUser()
	$gm := this.getCurrentGroupMember($user; $group)
	if($gm = null)
		$result := false
	else
		$result := true
	end if
*/
exposed Function groups($userSelected : cs:C1710.UserEntity; $display : Text)->$groups : cs:C1710.GroupSelection  // used in the page seeProfile (tab $groups)
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $groupsUser; groupsConnectedUser : cs:C1710.GroupSelection
	If ($display="all")
		$groups:=This:C1470.query("user.ID = :1 AND group.type # 'Chat'"; $userSelected.ID).group
	Else   //mutual $groups
		$groupsUser:=This:C1470.query("user.ID = :1 AND group.type # 'Chat'"; $userSelected.ID).group  //F : same as line 13??
		groupsConnectedUser:=This:C1470.query("user.ID = :1 AND group.type # 'Chat'"; $user.ID).group
		$groups:=$groupsUser.and(groupsConnectedUser)
		//$groups = this.query("user.ID IN :1 AND group.type # 'Chat'"; new Collection($userSelected.ID; $user.ID)).group
	End if 
	
exposed Function createMembers($group : cs:C1710.GroupEntity; $members : cs:C1710.UserSelection)
	var $member : cs:C1710.UserEntity
	var $newMember : cs:C1710.GroupMemberEntity
	For each ($member; $members)
		$newMember:=ds:C1482.GroupMember.new()
		$newMember.createMember($group; $member)
	End for each 
	
exposed Function membersNotAdmin($group : cs:C1710.GroupEntity)->$members : cs:C1710.GroupMemberSelection  //used in groupDetails (tab "members")
	$members:=This:C1470.query("isAdmin = :1 AND group.ID = :2"; False:C215; $group.ID)