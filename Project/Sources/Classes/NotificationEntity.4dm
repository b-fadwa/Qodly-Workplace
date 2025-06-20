Class extends Entity

exposed function returnNotifPage() : text  //used
	case of 
		: (this.type = "New comment!")
			web Form.enableState("hiddenNavBar")
			return "allBar"
		: (this.type = "New post!")
			web Form.enableState("hiddenNavBar")
			return "allBar"
		: (this.type = "New follow!")
			web Form.enableState("hiddenNavBar")
			return "allBar"
		: (this.type = "New message!")
			web Form.enableState("visibleChatBar")
			return "message"
		: (this.type = "New token!")
			web Form.enableState("visibleSettingsNav")
			return "settings"
	end case 
	
exposed function get isItRead()->$isItRead : text  //used
	return this.isRead = true ? "unread" : "read"
	
exposed function setRead()  //used
	this.isRead := this.isRead = null ? true : not(this.isRead)
	this.save()
	
exposed function sendByMail()
	var $mailer: cs.Mailer := cs.Mailer.me
	var $emailOptions: object := {}
	var $notifContent: text
	if (this.user.email # "")
		if ((session.storage.mailingCredentials.userName # null && session.storage.mailingCredentials.password # null) || (ds.Token.query("label = 'mailToken'").length # 0))
			$emailOptions.personalizations := [{to: [{email: this.user.email}]}]
			$emailOptions.subject := "New Notification from Q. workplace!"
			$notifContent := "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Workplace Notification</title><style>body{font-family:Arial; sans-serif;margin:0;padding:0;background-color:#f5f9ff;"+"co"+"lor:#333;}.container{max-width:600px;margin:20px auto;background:#ffffff;border:1px solid #d0e7ff;border-radius:10px;overflow:hidden;box-shadow:0 4px 6px rgba(0; 0; 0; 0.1);}.header{background-color:#1e90ff;color:#ffffff;padding:20px;text-align:center;}."+"header h1{margin:0;font-size:1.8rem;}.content{padding:20px;}.content p{font-size:1rem;line-height:1.6;}\t\t\t.footer{background-color:#eaf5ff;padding:15px;text-align:center;font-size:0.9rem;color:#555;}.button{display:inline-block;margin:20px 0;padding:1"\
				+"0px"+" 20px;background-color:#1e90ff;color:#ffffff;text-decoration:none;border-radius:5px;font-size:1rem;transition:background-color 0.3s ease;}.button:hover{background-color:#005cbf;}</style></head><body><div class=\"container\"><div class=\"header\"><h1>New N"+"otification</h1></div><div class=\"content\"><p>Dear "+string(this.user.email)+",</p><p>We wanted to let you know that "+this.content+" in your workplace environment.</p><a href=\"https://dev-ab053346-7525-499"+"4-8bb1-ab3eba9bf45f.staging-public.4dcloudtest.com"+"/\" class=\"button\">View Notification</a><p>Thank you for staying connected!</p></div><div class=\"footer\">&copy; 2025 Q. Workplace. All rights reserved.</div></div></body></html>"
			$emailOptions.content := [{type: "text/html"; value: $notifContent}]
			$mailer.send($emailOptions)
		else 
			web Form.setError("Set your sendgrid mailing credentials in settings! ")
		end if 
	else 
		web Form.setError("Fill the required field!")
	end if