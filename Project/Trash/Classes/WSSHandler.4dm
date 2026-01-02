shared singleton Class constructor()
	LOG EVENT:C667("******************into the Class constructor WSSHANLDER!********************************")
	
shared Function onOpen($wss : Object; $param : Object)
	LOG EVENT:C667("********************Server started!!******************************")
	
	
shared Function onConnection($wss : Object; $param : Object) : Object
	var $connectedUser : cs:C1710.UserEntity
	LOG EVENT:C667("****************** New connection request from: "+$param.request.remoteAddress+"**********************")
	$connectedUser:=ds:C1482.User.getCurrentUser()
	LOG EVENT:C667("***************** New connection request from: "+String:C10($connectedUser.fullName)+"**************************")
	return cs:C1710.WSClientHandler.new($connectedUser)
	
	
shared Function onTerminate
	LOG EVENT:C667("**************** Server closed *******************************")
	
shared Function onError($wss : Object; $param : Object)
	LOG EVENT:C667("********************** Server error: "+$param.statusText+"**********************")