Class extends Entity

exposed Function returnNotifPage() : Text
	Case of 
		: (This:C1470.type="New comment!")
			Web Form:C1735.enableState("hiddenNavBar")
			return "allBar"
		: (This:C1470.type="New post!")
			Web Form:C1735.enableState("hiddenNavBar")
			return "allBar"
		: (This:C1470.type="New follow!")
			Web Form:C1735.enableState("hiddenNavBar")
			return "allBar"
		: (This:C1470.type="New message!")
			Web Form:C1735.enableState("visibleChatBar")
			return "message"
		: (This:C1470.type="New token!")
			Web Form:C1735.enableState("visibleSettingsNav")
			return "settings"
	End case 
	
exposed Function get isItRead()->$isItRead : Text
	return This:C1470.isRead=True:C214 ? "unread" : "read"
	
	//read/unread notification
exposed Function setRead()
	This:C1470.isRead:=This:C1470.isRead=Null:C1517 ? True:C214 : Not:C34(This:C1470.isRead)
	This:C1470.save()
	
exposed Function sendByMail()
	var $mailer : cs:C1710.Mailer:=cs:C1710.Mailer.me
	var $emailOptions : Object:={}
	var $notifContent : Text
	If (This:C1470.user.email#"")
		If ((Session:C1714.storage.mailingCredentials.userName#Null:C1517 && Session:C1714.storage.mailingCredentials.password#Null:C1517) || (ds:C1482.Token.query("label = 'mailToken'").length#0))
			$emailOptions.personalizations:=[{to: [{email: This:C1470.user.email}]}]
			$emailOptions.subject:="New Notification from Q. workplace!"
			$notifContent:="<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Workplace Notification</title><style>body{font-family:Arial; sans-serif;margin:0;padding:0;background-color:#f5f9ff"+";"+"co"+"lor:#333;}.container{max-width:600px;margin:20px auto;background:#ffffff;border:1px solid #d0e7ff;border-radius:10px;overflow:hidden;box-shadow:0 4px 6px rgba(0; 0; 0; 0.1);}.header{background-color:#1e90ff;color:#ffffff;padding:20px;text-align:center"+";}."+"header h1{margin:0;font-size:1.8rem;}.content{padding:20px;}.content p{font-size:1rem;line-height:1.6;}\t\t\t.footer{background-color:#eaf5ff;padding:15px;text-align:center;font-size:0.9rem;color:#555;}.button{display:inline-block;margin:20px 0;padding:1"\
				+"0px"+" 20px;background-color:#1e90ff;color:#ffffff;text-decoration:none;border-radius:5px;font-size:1rem;transition:background-color 0.3s ease;}.button:hover{background-color:#005cbf;}</style></head><body><div class=\"container\"><div class=\"header\"><h1>New N"+"otification</h1></div><div class=\"content\"><p>Dear "+String:C10(This:C1470.user.email)+",</p><p>We wanted to let you know that "+This:C1470.content+" in your workplace environment.</p><a href=\"https://dev-ab053346-7525-499"+"4-8bb1-ab3eba9bf45f.staging-public.4dcloudtest.com"+"/\" class=\"button\">View Notification</a><p>Thank you for staying connected!</p></div><div class=\"footer\">&copy; 2025 Q. Workplace. All rights reserved.</div></div></body></html>"
			$emailOptions.content:=[{type: "text/html"; value: $notifContent}]
			$mailer.send($emailOptions)
		Else 
			Web Form:C1735.setError("Set your sendgrid mailing credentials in settings! ")
		End if 
	Else 
		Web Form:C1735.setError("Fill the required field!")
	End if 