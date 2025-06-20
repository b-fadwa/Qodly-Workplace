Class extends Entity

function createLog($content : text)  //used
	var $saved: object
	this.content := $content
	this.logDate := current Date()
	this.logHour := current Time()
	this.user := ds.User.getCurrentUser()
	$saved := this.save()
