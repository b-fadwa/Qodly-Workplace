//var $error : Object
//var $obj : Object
//var $startUpExists : Boolean
//var $myWebServer : Object:=WEB Server
//var $settings : Object:={}

//Try
//// Starts the web server with the session cookie Lax
//$settings.sessionCookieSameSite:="Lax"
//$myWebServer.start($settings)
//Catch
//LOG EVENT("Could not start web server"; Error message)
//For each ($error; Last errors)
//LOG EVENT("The error is "+String($error.errCode)+" - "+$error.message; Error message)
//End for each 
//End try

//Try
////Check if the singleton exists
//If (cs.QodlyEvents=Null)
//LOG EVENT("The singleton cs.QodlyEvents does not exist"; Error message)
//Else 
////Check if the onStartup function exists
//$obj:=cs.QodlyEvents.new()
//$startUpExists:=OB Is defined($obj; "onStartup")
//If ($startUpExists=False)
//LOG EVENT("The singleton cs.QodlyEvents function onStartup does not exist"; Error message)
//Else 
//cs.QodlyEvents.me.onStartup()
//End if 
//End if 

//Catch
//LOG EVENT("Error at startup"; Error message)

//For each ($error; Last errors)
//LOG EVENT("The error is "+String($error.errCode)+" - "+$error.message; Error message)
//End for each 

//End try
