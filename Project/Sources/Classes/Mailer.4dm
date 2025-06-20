shared singleton Class constructor()
	
shared Function send($email : Object)
	// trace
	var $token : cs:C1710.TokenEntity:=ds:C1482.Token.query("label = 'mailToken'").first()
	var $password : Text:=Session:C1714.storage.mailingCredentials.password#Null:C1517 ? Session:C1714.storage.mailingCredentials.password : $token.token
	var $from : Text:=Session:C1714.storage.mailingCredentials.userName#Null:C1517 ? Session:C1714.storage.mailingCredentials.userName : $token.userName
	var $headers; option : Object
	var $request : 4D:C1709.HTTPRequest
	var $result : Boolean
	$email.from:={$email: $from}
	$headers:={}
	$headers["Content-Type"]:="application/json"
	$headers["Authorization"]:="Bearer "+$password
	option:={}
	option.headers:=$headers
	option.method:="POST"
	option.body:=$email
	$request:=4D:C1709.HTTPRequest.new("https://api.sendgrid.com/v3/mail/send"; option).wait()
	// trace
	If ($request.response#Null:C1517)
		$result:=($request.response.status=202)
		If ($request.response.status=202)
			Web Form:C1735.setMessage("Invitation sent successfully!")
			Web Form:C1735["newInvitation"].hide()
		End if 
	End if 