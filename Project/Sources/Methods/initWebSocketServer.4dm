//%attributes = {}
//// Init webserver 
//var $newWebServer : 4D.WebServer
//var $handler : cs.WSSHandler
//var $form : 4D.Function
//var $WebSocketServer:=cs.WebSocketServer
//var $settings; $result : Object

//// Start the web server if necessary
//$newWebServer:=WEB Server(2)  //Werver host database)

//// trace
//// $settings = { HSTSEnabled: true; defaultHomepage:"https://dev-ab053346-7525-4994-8bb1-ab3eba9bf45f.apps.4dcloudtest.com/$lib/renderer/?w=mainPage" }

//$result:=$newWebServer.start()
//If ($result.success)
////...
//End if 


//// // Class that defines the server behavior
//$handler:=cs.WSHandler.new()
//// $form = formula(WebSocketServer = 4D.WebSocketServer.new($handler))
//// Creation of the websocket server 
//// WebSocketServer = 4D.WebSocketServer.new($handler)
//CALL WORKER("WebSocketServer"; Formula($WebSocketServer:=4D.WebSocketServer.new($handler)))