//%attributes = {}

var $newWebServer : 4D:C1709.WebServer
var $handler : cs:C1710.WSSHandler
var $WebSocketServer : 4D:C1709.WebSocketServer
TRACE:C157
$newWebServer:=WEB Server:C1674(2)

If (Not:C34($newWebServer.isRunning))
	$newWebServer.start()
End if 
TRACE:C157
// Class that defines the server behavior
$handler:=cs:C1710.WSSHandler.new()
TRACE:C157
// Creation of the websocket server 
CALL WORKER:C1389("WebSocketServer"; Formula:C1597($WebSocketServer:=4D:C1709.WebSocketServer.new($handler)))
