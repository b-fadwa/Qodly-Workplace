Class extends Entity


//generates a meeting link using the zoom api
exposed Function generateLink() : Text
	var $clientID : Text
	var $accountID : Text
	var $clientSecret : Text
	var $link : Text
	var $accessToken : Text
	var $tokenResponse; $linkDetails; $linkResponse : Object
	var $tokenRequest; linkRequest : 4D:C1709.HTTPRequest
	var $httpOptions : cs:C1710.HttpOptions
	var $base : Text
	var $isToday : Boolean:=(This:C1470.startDate=Current date:C33()) && (This:C1470.startHour=Current time:C178()) ? True:C214 : False:C215
	var $zoomQuery : cs:C1710.TokenSelection:=ds:C1482.Token.query("label = 'zoomToken")
	If ((Session:C1714.storage.zoomCredentials.accountID#Null:C1517 && Session:C1714.storage.zoomCredentials.clientID#Null:C1517 && Session:C1714.storage.zoomCredentials.clientSecret#Null:C1517) || $zoomQuery.length#0)
		$accountID:=Session:C1714.storage.mailingCredentials.accountID#Null:C1517 ? Session:C1714.storage.mailingCredentials.accountID : $zoomQuery.first().userName
		$clientID:=Session:C1714.storage.mailingCredentials.clientID#Null:C1517 ? Session:C1714.storage.mailingCredentials.clientID : $zoomQuery.first().token
		$clientSecret:=Session:C1714.storage.mailingCredentials.clientSecret#Null:C1517 ? Session:C1714.storage.mailingCredentials.clientSecret : $zoomQuery.first().additionalToken
		BASE64 ENCODE:C895($clientID+":"+$clientSecret; $base)
		$httpOptions:=cs:C1710.HttpOptions.new("POST"; New object:C1471("Authorization"; "Basic "+$base+" "; "Content-Type"; "application/x-www-form-urlencoded"); "grant_type=client_credentials")
		$tokenRequest:=4D:C1709.HTTPRequest.new("https://zoom.us/oauth/token?grant_type=account_credentials&account_id="+$accountID+""; $httpOptions)
		
		$tokenResponse:=$tokenRequest.wait()
		If ($tokenResponse.response.status=200)
			$accessToken:=$tokenResponse.response.body.access_token
			$linkDetails:={topic: This:C1470.name; type: 2; start_time: String:C10(This:C1470.startDate; ISO date GMT:K1:10; Time:C179(This:C1470.startHour)); duration: Time:C179(This:C1470.endHour-This:C1470.startHour); timezone: "UTC"; settings: {host_video: True:C214; participant_video: True:C214; waiting_room: True:C214}}
			
			$httpOptions:=cs:C1710.HttpOptions.new("POST"; New object:C1471("Authorization"; "Bearer "+$accessToken+""; "Content-Type"; "application/json"); $linkDetails)
			$linkRequest:=4D:C1709.HTTPRequest.new("https://api.zoom.us/v2/users/me/meetings"; $httpOptions)
			$linkResponse:=$linkRequest.wait()
			If ($linkResponse.response.status=201)
				$link:=$linkResponse.response.body.join_url
			Else 
			End if 
		Else 
			Web Form:C1735.setError("Error fetching access token:"+$tokenResponse.response.body)
		End if 
	Else 
		Web Form:C1735.setError("Set your zoom credentials in settings!")
	End if 
	
	return $link
	
	//incrementing the number of visits
exposed Function incrementNbOfVisits()
	This:C1470.nbOfVisits:=This:C1470.nbOfVisits=Null:C1517 ? 0 : This:C1470.nbOfVisits
	This:C1470.nbOfVisits+=1
	This:C1470.save()