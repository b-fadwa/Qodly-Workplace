Class extends Entity

//created new activity log
Function createLog($content : Text)
	var $saved : Object
	This:C1470.content:=$content
	This:C1470.logDate:=Current date:C33()
	This:C1470.logHour:=Current time:C178()
	This:C1470.user:=ds:C1482.User.getCurrentUser()
	$saved:=This:C1470.save()
	