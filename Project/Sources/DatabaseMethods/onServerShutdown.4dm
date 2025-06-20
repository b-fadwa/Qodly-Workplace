//var $error : Object
//var $obj : Object
//var $stopExists : Boolean

//Try
////Check if the QodlyEvents singleton exists
//If (cs.QodlyEvents#Null)
//$obj:=cs.QodlyEvents.new()
//$stopExists:=OB Is defined($obj; "onStop")
//If ($stopExists=False)
//LOG EVENT("The singleton cs.QodlyEvents function onStop does not exist"; Error message)
//Else 
//cs.QodlyEvents.me.onStop()
//End if 
//Else 
//LOG EVENT("The singleton cs.QodlyEvents does not exist"; Error message)
//End if 

//Catch
//LOG EVENT("Error on stop"; Error message)

//For each ($error; Last errors)
//LOG EVENT("The error is "+String($error.errCode)+" - "+$error.message; Error message)
//End for each 

//End try
