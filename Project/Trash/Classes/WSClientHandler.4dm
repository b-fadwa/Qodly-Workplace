property currentUser : cs:C1710.UserEntity

Class constructor($user : cs:C1710.UserEntity)
	This:C1470.currentUser:=$user
	
	
	//Defines a connection behavior =>send $users + $groups + $messages related to the connected user
Function onOpen($ws : 4D:C1709.WebSocketConnection; $info : Object)
	var $client; $data : Object
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $groups : cs:C1710.GroupSelection:=ds:C1482.Group.all().query("users.ID = :1"; This:C1470.currentUser.ID)
	var $message : cs:C1710.MessageEntity
	var $messages : cs:C1710.MessageSelection
	var $encodedSenderImage; encodedReceiverImage : Text
	var $senderBlobPic; receiverBlobPic : Blob
	var $finalReceiver : cs:C1710.UserEntity
	$messages:=ds:C1482.Message.query("sender.ID = :1 or receiver.ID = :1 "; This:C1470.currentUser.ID)
	If ($messages.length#0)
		For each ($message; $messages)
			$finalReceiver:=$message.receiver#Null:C1517 ? $message.receiver : $message.receiverGroup
			If ($message.receiver#Null:C1517 && $message.receiver.avatar#Null:C1517 && Not:C34(Undefined:C82($message.receiver.avatar)))
				PICTURE TO BLOB:C692($message.receiver.avatar; receiverBlobPic; "image/png")
				BASE64 ENCODE:C895(receiverBlobPic; encodedReceiverImage)
			End if 
			If ($message.sender.avatar#Null:C1517)
				PICTURE TO BLOB:C692($message.sender.avatar; $senderBlobPic; "image/png")
				BASE64 ENCODE:C895($senderBlobPic; $encodedSenderImage)
			End if 
			$ws.send(JSON Stringify:C1217({$sender: $message.sender.toObject(); receiver: $finalReceiver.toObject(); content: $message.content+"\n"}))
		End for each 
	End if 
	
Function onMessage($ws : Object; $info : Object)
	var $client; formattedData; status : Object
	var $message : cs:C1710.MessageEntity
	var $data; $finalReceiver : Variant
	var $sender; receiver : cs:C1710.UserEntity
	var $receiverGroup : cs:C1710.GroupEntity
	var $encodedSenderImage; $receiverLabel; $encodedReceiverImage : Text
	var $senderBlobPic; $receiverBlobPic : Blob
	var $messages : cs:C1710.MessageSelection
	For each ($client; $ws.wss.connections)
		Try
			$data:=JSON Parse:C1218($info.data)
		Catch
			$data:={content: $info.data}
		End try
		If ($data.receiver#Null:C1517)
			$receiverLabel:=$data.receiver
		Else 
			$receiverLabel:=This:C1470.currentUser.fullName
		End if 
		$sender:=ds:C1482.User.query("fullName = :1"; This:C1470.currentUser.fullName).first()
		Case of 
			: (ds:C1482.User.query("fullName = :1"; $receiverLabel).length#0)
				$receiver:=ds:C1482.User.query("fullName = :1"; $receiverLabel).first()
				$messages:=ds:C1482.Message.query("(sender.ID = :1 and receiver.ID = :2) or (sender.ID = :2 and receiver.ID = :1) and sentAt = :3"; $sender.ID; receiver.ID; Current time:C178)
			: (ds:C1482.Group.query("label = :1"; $receiverLabel).length#0)
				$receiverGroup:=ds:C1482.Group.query("label = :1"; $receiverLabel).first()
				$messages:=ds:C1482.Message.query("(sender.ID = :1 and receiverGroup.ID = :2) and sentAt = :3"; $sender.ID; $receiverGroup.ID; Current time:C178)
		End case 
		If ($messages.length#0)
			$message:=$messages.first()
		Else 
			$message:=ds:C1482.Message.new()
			$message.isRead:=False:C215
			$message.sender:=$sender
			If ($receiver#Null:C1517)
				$message.receiver:=$receiver
				$finalReceiver:=$receiver
			End if 
			If ($receiverGroup#Null:C1517)
				$message.receiverGroup:=$receiverGroup
				$finalReceiver:=$receiverGroup
			End if 
			If (($receiverGroup#Null:C1517))
				status:=$message.save()
			End if 
			If (($receiver#Null:C1517))
				$status:=$message.save()
			End if 
		End if 
		If (($client.handler.currentUser.ID=$receiver.ID) || ($client.handler.currentUser.ID=$sender.ID))
			If ($message.receiver#Null:C1517)
				PICTURE TO BLOB:C692($message.receiver.avatar; $receiverBlobPic; "image/png")
				BASE64 ENCODE:C895($receiverBlobPic; $encodedReceiverImage)
			End if 
			If ($message.sender.avatar#Null:C1517)
				PICTURE TO BLOB:C692($message.sender.avatar; $senderBlobPic; "image/png")
				BASE64 ENCODE:C895($senderBlobPic; $encodedSenderImage)
			End if 
			$client.send(JSON Stringify:C1217({$sender: $message.sender.toObject(); receiver: $finalReceiver.toObject(); \
				senderAvatar: "data:image/png;base64; "+$encodedSenderImage; receiverAvatar: "data:image/png;base64; "+$encodedReceiverImage; \
				isRead: $message.isRead; content: $message.content+"\n"}))
		End if 
	End for each 
	
	
	
	// Called when an error occured
Function onError($ws : Object; $info : Object)
	TRACE:C157
	LOG EVENT:C667("*** Error: "+This:C1470.currentUser.fullName+" - "+JSON Stringify:C1217($info))
	
	// Called when the session is closed
Function onTerminate($ws : Object; $info : Object)
	var $currentUser : cs:C1710.UserEntity
	TRACE:C157
	LOG EVENT:C667("Connection closed: "+This:C1470.currentUser.fullName+" - code: "+String:C10($info.code)+" "+String:C10($info.reason))
	
	
	// property $currentUser : cs.UserEntity
	
	// Class constructor(user : cs.UserEntity)
	// 	this.currentUser = user
	// 	trace
	
	// function onOpen($ws : 4D.WebSocketConnection; $info : object)
	// 	trace
	// 	log Event("*************************On open of the wsclientHandler executed !*************************")
	
	
	// function onMessage($ws : object; $info : object)
	// 	trace
	// 	log Event("********************* On message executed! *********************")
	
	// 	// Called when an error occured
	// function onError($ws : object; $info : object)
	// 	trace
	// 	log Event("********************** Error: "+this.currentUser.fullName+" - "+JSON Stringify($info)+"************************")
	
	// 	// Called when the session is closed
	// function onTerminate($ws : object; $info : object)
	// 	var $currentUser : cs.UserEntity
	// 	trace
	// 	log Event("************Connection closed: "+this.currentUser.fullName+" - code: "+string($info.code)+" "+string($info.reason)+"***************")
	
	
	
	// Class constructor(countClient : integer; request : object)
	// 	/// Class that defines a connection behavior 
	// 	var colors : collection
	
	// 	// Creates the user name that appear in conversation
	// 	this.name = "Client"+string(countClient)
	// 	// Definition of the $color string for the current user in conversation
	// 	colors = new Collection("aqua"; "blue"; "fuchsia"; "gray"; "green"; "lime"; "maroon"; "navy"; "olive"; "purple"; "silver"; "teal")
	// 	this.color = colors[mod(countClient; colors.length)]
	
	// 	// Stores the remote address
	// 	this.address = request.remoteAddress
	
	
	// 	/// Defines a connection behavior
	// function onOpen($ws : 4D.WebSocketConnection; $info : object)
	// 	var $client : object
	// 	trace
	// 	$ws.send(this.serverMessage("Welcome on the chat!"))
	// 	for each ($client; $ws.wss.connections)
	// 		if ($client.id # $ws.id)
	// 			$client.send(this.myMessage(this.color; string(this.name)+" connected!"))
	// 		end 
	// 	end 
	
	// 	// Called each time the user sends a $message
	// function onMessage($ws : object; $info : object)
	// 	var $client : object
	// 	trace
	// 	// Resend the $message to all clients
	// 	for each ($client; $ws.wss.connections)
	// 		if ($client.id # $ws.id)
	// 			$client.send($client.handler.myMessage(this.color; this.name+": "+string($info.data)))
	// 		end 
	// 	end 
	
	// 	// Called when an error occured
	// function onError($ws : object; $info : object)
	// 	trace
	// 	$ws.wss.handler.logFile("*** Error: "+this.name+" - "+this.address+" - "+JSON Stringify($info.status))
	
	// 	// Called when the session is closed
	// function onTerminate($ws : object; $info : object)
	// 	var $client : object
	// 	trace
	// 	$ws.wss.handler.logFile("Connection closed: "+this.name+" - "+string(this.address)+" - code: "+string($info.code)+" "+string($info.reason))
	// 	// resend the $message "new client connected" to all clients
	// 	for each ($client; $ws.wss.connections)
	// 		if ($client.id # $ws.id)
	// 			$client.send(this.myMessage(this.color; string(this.name)+" disconnected!"))
	// 		end 
	// 	end 
	
	// 	/// creates a server type $message (display in red in the chat)
	// function serverMessage($message : text) : text
	// 	return "<p style='color:red'>"+string($message)+"</p>"
	
	// 	/// Creates a $message with a defined user $color 
	// function myMessage($color : text; $message : text) : text
	// 	return "<p style='color:"+$color+"'>"+string($message)+"</p>"