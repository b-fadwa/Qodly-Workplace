Class extends Entity

exposed Alias myGroups groupMembers.group
exposed Alias userTeams teamMembers.team

//local Function $aws()->$aws : Object
//var $userCS : cs.Qodly.Users
//$userCS:=cs.Qodly.Users.me
//If (Session.storage.users=Null)
//Use (Session.storage)
//Session.storage.currentUser:=New shared object("ID"; This.ID)
//Session.storage.users:=$userCS.allUsers().copy(16)
//End use 
//End if 
//If (Session.storage.users#Null)
//$aws:=Session.storage.users.query("email = :1"; This.email).at(0)
//End if 

exposed Function get fullName()->$fullName : Text
	$fullName:=(This:C1470.firstName && This:C1470.lastName) ? (This:C1470.firstName+" "+Uppercase:C13(This:C1470.lastName)) : (Uppercase:C13(This:C1470.lastName) || This:C1470.firstName) || ""
	
exposed Function get role()->$role : Text
	var $aws : Object
	$role:=""
	$aws:=This:C1470.aws()
	If ($aws#Null:C1517)
		$role:=$aws.role
	End if 
	
exposed Function get managedGroups()->$managedGroups : cs:C1710.GroupSelection  //used in groupsPage
	If (This:C1470.groupMembers.query("isAdmin = :1"; True:C214).length#0)
		$managedGroups:=This:C1470.groupMembers.query("isAdmin = :1"; True:C214).group
	End if 
	
exposed Function get pinnedGroups()->$pinnedGroups : cs:C1710.GroupSelection  //used in groupsPage
	$pinnedGroups:=This:C1470.groupMembers.group.query("isPinned = true")
	
exposed Function get chatGroups()->$pinnedGroups : cs:C1710.GroupSelection  //used 
	$pinnedGroups:=This:C1470.groupMembers.group.query("type = 'Chat'")
	
exposed Function get isFollowedByConnUser()->$result : Boolean  // used
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $friendship : cs:C1710.FriendshipEntity
	If (This:C1470.ID#$user.ID)
		$friendship:=ds:C1482.Friendship.query("user1.ID = :1 AND user2.ID = :2"; $user.ID; This:C1470.ID).first()
		If ($friendship#Null:C1517)
			$result:=True:C214
		Else 
			$result:=False:C215
		End if 
	End if 
	
exposed Function get isByConnUser()->$result : Text  // used
	var $user : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	var $friendship : cs:C1710.FriendshipEntity
	If (This:C1470.ID=$user.ID)
		$result:="yes"
	Else 
		$result:="no"
	End if 
	
exposed Function setConnectionStatus($choosenStatus : Object; $doNotDisturb : Boolean)  //used
	var $isSaved : Object
	TRACE:C157
	If (($doNotDisturb) && ($choosenStatus.emoji=Null:C1517))
		This:C1470.status:={emoji: "⛔"; label: "Do not disturb"}
		$isSaved:=This:C1470.save()
		If ($isSaved.success)
			Web Form:C1735.setMessage("Status set successfully!")
			Web Form:C1735["setStatus"].hide()
		Else 
			Web Form:C1735.setError("Error!")
		End if 
	Else 
		If (($choosenStatus.emoji#Null:C1517) && ($choosenStatus.label#Null:C1517))
			If ($choosenStatus.emoji="")
				Web Form:C1735.setError("Emoji required!")
			Else 
				This:C1470.status:=$choosenStatus
				$isSaved:=This:C1470.save()
				If ($isSaved.success)
					Web Form:C1735.setMessage("Status set successfully!")
					Web Form:C1735["setStatus"].hide()
				Else 
					Web Form:C1735.setError("Error!")
				End if 
			End if 
		Else 
			Web Form:C1735.setError("Fill or select a predefined status!")
		End if 
	End if 
	
exposed Function showUserPosts()->$result : cs:C1710.PostSelection  // used in the page seeProfile
	var $connectedUser : cs:C1710.UserEntity:=ds:C1482.User.getCurrentUser()
	If (This:C1470.ID=$connectedUser.ID)
		$result:=This:C1470.posts.orderBy("createdAt desc")
	Else 
		$result:=This:C1470.posts.query("visibility = 'public'").orderBy("createdAt desc")
	End if 
	
exposed Function reloadUser()  //used (bug #331)
	This:C1470.reload()
	
exposed Function groupMessage() : cs:C1710.MessageSelection  //used
	var $group : cs:C1710.GroupEntity
	var $distinctIds : Collection:=This:C1470.groupMembers.query("group.type = 'Chat'").group.distinct("ID")
	var $messages : cs:C1710.MessageSelection:=ds:C1482.Message.newSelection()
	var $id : Integer
	For each ($id; $distinctIds)
		$group:=ds:C1482.Group.get($id)
		$messages.add($group.messages.orderBy("createdAt desc").first())
	End for each 
	return $messages.query("isHidden # false or isHidden # null")
	
exposed Function get hasActiveAccount()->$hasActiveAccount : Boolean  //used
	$hasActiveAccount:=((This:C1470.department#Null:C1517) && (This:C1470.jobTitle#"")) ? True:C214 : False:C215
	
exposed Function getHierarchy() : Object  //used
	var $user : cs:C1710.UserEntity
	var $team : cs:C1710.TeamEntity
	var $colleagues : Collection:=[]
	var $test : Object:={}
	This:C1470.reload()
	TRACE:C157
	If (This:C1470.teamMembers.length#0)
		For each ($team; This:C1470.teamMembers.team)
			// $team = this.teamMembers.first().team
			For each ($user; $team.members)  //.minus(this))
				$colleagues.push({label: String:C10($user.fullName)})
			End for each 
			return {label: "App Admin"; children: [{label: String:C10($team.manager.fullName); children: $colleagues}]}
			// $test = {label: "App Admin"; children: [{label: text($team.manager.fullName); children: $colleagues}]}
		End for each 
	Else 
		Web Form:C1735.setWarning("Set your manager or join a team!")
		return Null:C1517
	End if 
	
exposed Function setManager($user : cs:C1710.UserEntity)
	var $team : cs:C1710.TeamEntity
	var $teamMember : cs:C1710.TeamMemberEntity
	If ($user.teamMembers.length#0)
		$team:=$user.teamMembers.team.first()
		$teamMember:=ds:C1482.TeamMember.new()
		$teamMember.team:=$team
		$teamMember.user:=This:C1470
		$teamMember.save()
		Web Form:C1735.setMessage("You joined the team "+String:C10($team.label))
	Else 
		Web Form:C1735.setError("This user does not belong to any team!")
	End if 
	