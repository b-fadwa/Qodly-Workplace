shared singleton Class constructor()
	trace
	log Event("******************into the Class constructor WSSHANLDER!********************************")
	
shared function onOpen($wss : object; $param : object)
	trace
	log Event("********************Server started!!******************************")
	
	
shared function onConnection($wss : object; $param : object) : object
	var $connectedUser: cs.UserEntity
	log Event("****************** New connection request from: "+$param.request.remoteAddress+"**********************")
	trace
	$connectedUser := ds.User.getCurrentUser()
	log Event("***************** New connection request from: "+string($connectedUser.fullName)+"**************************")
	return cs.WSClientHandler.new($connectedUser)

		
shared function onTerminate
	trace
	log Event("**************** Server closed *******************************")

shared function onError($wss : object; $param : object)
	trace
	log Event("********************** Server error: "+$param.statusText +"**********************")


// singleton Class constructor(winRef : integer)
	
// 	this.countClient = 0
// 	this.winRef = winRef
	
// 	/// Function called when the server starts
// function onOpen($wss : object; $param : object)
// 	trace
	
// /** Function called each time a new user log in
// 	 In this example, we accept all the connections */
// function onConnection($wss : object; $param : object) : object
// 	trace
// 	$wss.handler.countClient += 1
// 	return cs.WSClientHandler.new($wss.handler.countClient; $param.request)
	
	
// 	/// Function called when the server closes
// function onTerminate
// 	trace
	
// 	/// Function called when the an error occured
// function onError($wss : object; $param : object)
// 	trace
// 	/// Write information in the log file
// function logFile($logContent : text)
// 	trace