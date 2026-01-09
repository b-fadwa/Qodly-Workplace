Class extends Entity

exposed Function create($receivers : cs:C1710.UserSelection; $currentUser : cs:C1710.UserEntity; $ChatGroup : cs:C1710.GroupEntity)
	var $receiver : cs:C1710.UserEntity
	This:C1470.createdAt:=Current date:C33()
	This:C1470.atHour:=Current time:C178()
	This:C1470.sender:=$currentUser
	This:C1470.isDraft:=This:C1470.isDraft ? True:C214 : False:C215
	If ($receivers.length=1)
		$receiver:=$receivers.first()
		This:C1470.receiver:=$receiver
		This:C1470.type:="Direct"
		This:C1470.save()
		ds:C1482.Notification.createNotif(Null:C1517; "New message!"; $receiver)
	Else 
		This:C1470.receiverGroup:=$ChatGroup
		This:C1470.type:="Group"
		This:C1470.save()
		For each ($receiver; $receivers)
			ds:C1482.Notification.createNotif(Null:C1517; "New message!"; $receiver)
		End for each 
	End if 
	
exposed Function get isItMute()->$isItMute : Text
	return This:C1470.isMuted=True:C214 ? "Umute" : "Mute"
	
	
	//mute/unmute message
exposed Function setMute()
	var $saved : Object
	This:C1470.isMuted:=This:C1470.isMuted=Null:C1517 ? True:C214 : Not:C34(This:C1470.isMuted)
	$saved:=This:C1470.save()
	If ($saved.success)
		Web Form:C1735.setMessage("Message muted!")
	Else 
		Web Form:C1735.setError("Error")
	End if 
	
exposed Function get isItRead->$isItRead : Text
	return This:C1470.isRead=True:C214 ? "unread" : "read"
	
	//read/unread message
exposed Function setRead()
	var $saved : Object
	This:C1470.isRead:=This:C1470.isRead=Null:C1517 ? True:C214 : Not:C34(This:C1470.isRead)
	$saved:=This:C1470.save()
	If ($saved.success)
		Web Form:C1735.setMessage("Message read!")
	Else 
		Web Form:C1735.setError("Error")
	End if 
	
exposed Function get isItPinned()->$isItPinned : Text
	return This:C1470.isPinned=True:C214 ? "Unpin" : "Pin"
	
	//pin/unpin message
exposed Function setPinned()
	var $saved : Object
	This:C1470.isPinned:=This:C1470.isPinned=Null:C1517 ? True:C214 : Not:C34(This:C1470.isPinned)
	$saved:=This:C1470.save()
	If ($saved.success)
		Web Form:C1735.setMessage("Message pinned!")
	Else 
		Web Form:C1735.setError("Error")
	End if 
	
exposed Function get isItHidden->$isItHidden : Text
	return This:C1470.isHidden=True:C214 ? "Unhide" : "Hide"
	
	//hide/unhide message
exposed Function setHidden()
	var $saved : Object
	This:C1470.isHidden:=This:C1470.isHidden=Null:C1517 ? True:C214 : Not:C34(This:C1470.isHidden)
	$saved:=This:C1470.save()
	If ($saved.success)
		Web Form:C1735.setMessage("Message hidden!")
	Else 
		Web Form:C1735.setError("Error")
	End if 
	
	//leave  group chat
exposed Function leaveChatGroup($currentUser : cs:C1710.UserEntity)
	var $chatGroupMembers : cs:C1710.UserSelection
	var $groupMember : cs:C1710.UserEntity
	var $dropped : Object
	$chatGroupMembers:=This:C1470.receiverGroup.groupMembers.query("user.ID = :1"; $currentUser.ID)
	If ($chatGroupMembers.length#0)
		$groupMember:=$chatGroupMembers.first()
		$dropped:=$groupMember.drop()
		If ($dropped.success)
			Web Form:C1735.setMessage("You left this chat group!")
		Else 
			Web Form:C1735.setError("Error!")
		End if 
	End if 