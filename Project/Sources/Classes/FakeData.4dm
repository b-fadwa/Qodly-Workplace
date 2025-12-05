//to fill

Function generateData()
	This:C1470.generateFakeUsers()
	This:C1470.generateTeams()
	This:C1470.linkUserToTeam()
	This:C1470.generateGroups()
	This:C1470.generateEvents()
	This:C1470.generateGroupEvents()
	This:C1470.generateGroupMembers()
	This:C1470.generateFriends()
	This:C1470.generateGroupPosts()
	This:C1470.generateWallPosts()
	This:C1470.generateUserViews()
	This:C1470.generateComments()
	This:C1470.generateReactions()
	This:C1470.generateMessages()
	This:C1470.generatingGroupMessages()
	This:C1470.generateNotifications()
	This:C1470.generateActivityLog()
	This:C1470.generateNote()
	This:C1470.generateNoteContributions()
	This:C1470.generateNoteComments()
	
Function dropData()
	var $status : Object
	$status:=ds:C1482.User.all().drop()
	$status:=ds:C1482.Team.all().drop()
	$status:=ds:C1482.TeamMember.all().drop()
	$status:=ds:C1482.Group.all().drop()
	$status:=ds:C1482.Event.all().drop()
	$status:=ds:C1482.GroupMember.all().drop()
	$status:=ds:C1482.Friendship.all().drop()
	$status:=ds:C1482.Post.all().drop()
	$status:=ds:C1482.UserView.all().drop()
	$status:=ds:C1482.Comment.all().drop()
	$status:=ds:C1482.Reaction.all().drop()
	$status:=ds:C1482.Message.all().drop()
	$status:=ds:C1482.Notification.all().drop()
	$status:=ds:C1482.ActivityLog.all().drop()
	$status:=ds:C1482.Note.all().drop()
	$status:=ds:C1482.Contribution.all().drop()
	
Function generateFakeUsers()
	var $user : Object
	var $newUser : cs:C1710.UserEntity
	var $fakeUsers : Collection:=[{email: "john.doe@gmail.com"; firstName: "John"; lastName: "Doe"}; {email: "jane.smith@yahoo.com"; firstName: "Jane"; lastName: "Smith"}; \
		{email: "michael.jones@hotmail.com"; firstName: "Michael"; lastName: "Jones"}; {email: "emily.davis@gmail.com"; firstName: "Emily"; lastName: "Davis"}; \
		{email: "daniel.brown@outlook.com"; firstName: "Daniel"; lastName: "Brown"}; {email: "sophia.miller@gmail.com"; firstName: "Sophia"; lastName: "Miller"}; \
		{email: "william.wilson@yahoo.com"; firstName: "William"; lastName: "Wilson"}; {email: "olivia.moore@hotmail.com"; firstName: "Olivia"; lastName: "Moore"}; \
		{email: "james.taylor@gmail.com"; firstName: "James"; lastName: "Taylor"}; {email: "ava.anderson@outlook.com"; firstName: "Ava"; lastName: "Anderson"}; \
		{email: "ethan.harris@yahoo.com"; firstName: "Ethan"; lastName: "Harris"}; {email: "mia.clark@gmail.com"; firstName: "Mia"; lastName: "Clark"}; \
		{email: "alexander.lewis@hotmail.com"; firstName: "Alexander"; lastName: "Lewis"}; {email: "isabella.walker@outlook.com"; firstName: "Isabella"; lastName: "Walker"}; \
		{email: "logan.martin@gmail.com"; firstName: "Logan"; lastName: "Martin"}; {email: "chloe.robinson@yahoo.com"; firstName: "Chloe"; lastName: "Robinson"}; \
		{email: "lucas.young@hotmail.com"; firstName: "Lucas"; lastName: "Young"}; {email: "emma.king@gmail.com"; firstName: "Emma"; lastName: "King"}; \
		{email: "jack.wright@yahoo.com"; firstName: "Jack"; lastName: "Wright"}; {email: "amelia.scott@outlook.com"; firstName: "Amelia"; lastName: "Scott"}]
	var $teams : Collection:=["CST"; "4D Support"; "QA"; "Cloud"; "SI"; "UI/UX"]
	var $isAccountActive : Collection:=[True:C214; False:C215]
	var $locations : Collection:=["New York; USA"; "London; UK"; "Toronto; Canada"; "Sydney; Australia"; "Tokyo; Japan"; "Berlin; Germany"; "Paris; France"; "Dubai; UAE"; "São Paulo; Brazil"; "Singapore"; "Hong Kong"; "San Francisco; USA"; "Mumbai; India"; "Cape Town; South Africa"; "Seoul; South Korea"]
	var $skills : Collection:=["Project Management ;Data Analysis; Graphic Design ; Software Development; Public Speaking"; "Digital Marketing ;Time Management; Content Writing; Search Engine Optimization (SEO); Customer Service"; \
		"Financial Analysis ;Team Leadership ;Critical Thinking; Problem Solving; Event Planning"]
	var $jobTitles : Collection:=["Software Engineer"; "Data Scientist"; "Web Developer"; "Machine Learning Engineer"; "Cybersecurity Analyst"; "Database Administrator"; "Cloud Architect"; "Front-End Developer"; \
		"Back-End Developer"; "DevOps Engineer"; "AI Researcher"; "IT Project Manager"; "Systems Analyst"; "Network Engineer"; "UI/UX Designer"]
	For each ($user; $fakeUsers)
		$newUser:=ds:C1482.User.new()
		$newUser.email:=$user.email
		$newUser.firstName:=$user.firstName
		$newUser.lastName:=$user.lastName
		$newUser.workPhone:="06********"
		$newUser.personalPhone:="06********"
		$newUser.status:={emoji: "🕛"; label: "Offline"}
		$newUser.jobTitle:=$jobTitles.at(Random:C100%($jobTitles.length))
		$newUser.skills:=$skills.at(Random:C100%($skills.length))
		$newUser.location:=$locations.at(Random:C100%($locations.length))
		$newUser.password:=Generate password hash:C1533($user.firstName)
		$newUser.department:=$teams.at(Random:C100%($teams.length))
		$newUser.save()
	End for each 
	
Function generateTeams()  //generating $teams
	var $newTeam : cs:C1710.TeamEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $teams : Collection:=["CST team"; "4D Support team"; "QA team"; "Cloud team"; "SI team"; "UI/UX team"]
	var $descriptions : Collection:=["Dedicated to providing world-class customer service and technical solutions; ensuring seamless experiences for clients and end-users."; "Experts in resolving advanced development challenges; specializing in troubleshooting and offering tailored support for 4D applications."; \
		"Ensuring the highest quality standards by rigorously testing software and systems; identifying issues; and promoting reliability."; "Innovators in cloud infrastructure; focusing on scalable; secure; and efficient solutions for modern digital ecosystems."; \
		"Specialists in systems integration; seamlessly connecting diverse technologies and streamlining workflows for optimal performance."; "Creators of intuitive designs and user-friendly interfaces; delivering aesthetically pleasing and functional experiences."]
	
	var $team : Text
	For each ($team; $teams)
		$newTeam:=ds:C1482.Team.new()
		$newTeam.label:=$team
		$newTeam.description:=$descriptions.at(Random:C100%($descriptions.length))
		$newTeam.manager:=$users.at(Random:C100%($users.length))
		$newTeam.save()
	End for each 
	
Function linkUserToTeam()  //generating teamMembers
	var $teamMember : cs:C1710.TeamMemberEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $teams : cs:C1710.TeamSelection:=ds:C1482.Team.all()
	var $user : cs:C1710.UserEntity
	var $index : Integer:=0
	While ($index<=$teams.length)
		$teamMember:=ds:C1482.TeamMember.new()
		$teamMember.team:=$teams.at(Random:C100%($teams.length))
		$teamMember.user:=$users.at(Random:C100%($users.length))
		$teamMember.save()
		$index+=1
	End while 
	
Function generateGroups()  //generating $groups
	var $groups : Collection:=[{name: "Everyone at Qodly"; description: "Important updates every employee should read. Default group for all employees of Qodly team."}; \
		{name: "Qodly CST"; description: "A group for Qodly Customer Success Team."}; \
		{name: "Qodly Cloud"; description: "A group for Qodly Cloud Team."}; \
		{name: "Workplace Tips"; description: "Helpful tips to make Workplace more effective for you and your coworkers. A place for your feedback to help us improve your experience."}; \
		{name: "Everyone at 4D"; description: "Important updates every employee should read. Default group for all employees of 4D."}]
	var $group : Object
	var $types : Collection:=["Private"; "Public"; "Chat"]  //chat $types generated automatically by $messages..
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $newGroup : cs:C1710.GroupEntity
	For each ($group; $groups)
		$newGroup:=ds:C1482.Group.new()
		$newGroup.name:=$group.name
		$newGroup.type:=$types.at(Random:C100%$types.length)
		$newGroup.description:=$group.description
		$newGroup.createdAt:=Current date:C33()
		$newGroup.createdBy:=$users.at(Random:C100%($users.length))
		$newGroup.save()
	End for each 
	
Function generateEvents()  //generating events
	var $newEvent : cs:C1710.EventEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $eventNames : Collection:=["Annual Company Retreat"; "Team Building Workshop"; "Product Launch Event"; "Monthly Review Meeting"; "Networking Mixer"; "Holiday Celebration"; "Training Session"; "Client Appreciation Day"; "Project Kickoff"; \
		"End-of-Year Party"; "Strategy Planning Session"; "Community Outreach"; "Charity Fundraiser"; "Innovation Conference"; "Performance Review"; "Sales Strategy Meeting"]
	var $eventDescriptions : Collection:=["Join us for a day of fun and team building!"; "We're excited to launch our new product!"; "Let's review our achievements and plan for the next month."; "Network with industry professionals and expand your connections."; "Celebrate the holidays with food; fun; and festivities!"; \
		"A workshop to enhance team collaboration and skills."; "Learn about our upcoming projects and goals."; "Thanking our clients for their continued support."; "Discussing strategies for the upcoming quarter."; "A chance to innovate and share new ideas."; "Reviewing performance metrics and feedback."; \
		"Giving back to the community through volunteer work."; "Fundraising event for a great cause!"; "A conference focused on the latest trends in our industry."; "Team strategy meeting to align our goals."; "End the year with a celebration of our successes!"]
	var $index : Integer:=0
	var $types : Collection:=["On workplace"; "In person"; "External video call"]
	While ($index<=$eventNames.length)
		$newEvent:=ds:C1482.Event.new()
		$newEvent.name:=$eventNames.at(Random:C100%$eventNames.length)
		$newEvent.description:=$eventDescriptions.at(Random:C100%$eventDescriptions.length)
		$newEvent.createdAt:=Current date:C33()
		$newEvent.createdBy:=$users.at(Random:C100%($users.length))
		$newEvent.startDate:=Add to date:C393(Current date:C33(); 0; 0; 5)
		$newEvent.endDate:=Add to date:C393($newEvent.startDate; 0; 0; 7)
		$newEvent.startHour:=Current time:C178()
		$newEvent.endHour:=Current time:C178()
		$newEvent.type:=$types.at(Random:C100%($types.length))
		//$newEvent.location:=($newEvent.type="On workplace" || $newEvent.type="In person") ? "At office" : ""
		If (($newEvent.type="On workplace") || ($newEvent.type="In person"))
			$newEvent.location:="At office"
		Else 
			$newEvent.location:=""
		End if 
		$newEvent.place:=($newEvent.type="External video call") ? "https://zoom.us/j/12345678" : ""
		$newEvent.mapLocation:={latitude: 0.1; longitude: 0.1}
		$newEvent.nbOfVisits:=(Random:C100%(20-1+1))+1
		$newEvent.save()
		$index+=1
	End while 
	
Function generateGroupEvents()  //generating $group events
	var $newEvent : cs:C1710.EventEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $groups : cs:C1710.GroupSelection:=ds:C1482.Group.all()
	var $eventNames : Collection:=["Annual Company Retreat"; "Team Building Workshop"; "Product Launch Event"; "Monthly Review Meeting"; "Networking Mixer"; "Holiday Celebration"]
	var $eventDescriptions : Collection:=["Join us for a day of fun and team building!"; "We're excited to launch our new product!"; "Let's review our achievements and plan for the next month."; "Network with industry professionals and expand your connections."; "Celebrate the holidays with food; fun; and festivities!"; \
		"A workshop to enhance team collaboration and skills."]
	var $index : Integer:=0
	var $types : Collection:=["On workplace"; "In person"; "External video call"]
	While ($index<=$eventNames.length)
		$newEvent:=ds:C1482.Event.new()
		$newEvent.name:=$eventNames.at(Random:C100%$eventNames.length)
		$newEvent.description:=$eventDescriptions.at(Random:C100%$eventDescriptions.length)
		$newEvent.createdAt:=Current date:C33()
		$newEvent.createdBy:=$users.at(Random:C100%($users.length))
		$newEvent.startDate:=Add to date:C393(Current date:C33(); 0; 0; 5)
		$newEvent.endDate:=Add to date:C393($newEvent.startDate; 0; 0; 7)
		$newEvent.startHour:=Current time:C178()
		$newEvent.endHour:=Current time:C178()
		$newEvent.type:=$types.at(Random:C100%($types.length))
		//$newEvent.location:=($newEvent.type="On workplace" || $newEvent.type="In person") ? "At office" : ""
		If (($newEvent.type="On workplace") || ($newEvent.type="In person"))
			$newEvent.type:="At office"
		Else 
			$newEvent.location:=""
		End if 
		$newEvent.place:=($newEvent.type="External video call") ? "https://zoom.us/j/12345678" : ""
		$newEvent.mapLocation:={latitude: 0.1; longitude: 0.1}
		$newEvent.nbOfVisits:=(Random:C100%(20-1+1))+1
		$newEvent.group:=$groups.at(Random:C100%($groups.length))
		$newEvent.save()
		$index+=1
	End while 
	
Function generateFriends()  //generate friendships
	var $newFriend : cs:C1710.FriendshipEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $friends : cs:C1710.UserSelection
	var $isFollowing : Collection:=[True:C214; False:C215]
	var $user; $friend : cs:C1710.UserEntity
	For each ($user; $users)
		$friends:=$users.minus($user)
		For each ($friend; $friends)
			$newFriend:=ds:C1482.Friendship.new()
			$newFriend.user1:=$user
			$newFriend.user2:=$friend
			// $newFriend.isAccepted = true //no longer needed ???
			$newFriend.isFollowing:=$isFollowing.at(Random:C100%$isFollowing.length)
			$newFriend.createdAt:=Current date:C33()
			$newFriend.save()
		End for each 
	End for each 
	
Function generateGroupMembers()  //generateGroupMembers
	var $newGroupMember : cs:C1710.GroupMemberEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $user : cs:C1710.UserEntity
	var $groups : cs:C1710.GroupSelection:=ds:C1482.Group.all()
	var $group : cs:C1710.GroupEntity
	var $col : Collection:=[True:C214; False:C215]
	For each ($user; $users)
		For each ($group; $groups)
			$newGroupMember:=ds:C1482.GroupMember.new()
			$newGroupMember.joinedAt:=Current date:C33()
			$newGroupMember.group:=$group
			$newGroupMember.user:=$user
			$newGroupMember.isAdmin:=$col.at(Random:C100%2)
			$newGroupMember.isPinned:=$col.at(Random:C100%2)
			$newGroupMember.save()
		End for each 
	End for each 
	
Function generateGroupPosts()  //generating $posts inside $groups
	var $newPost : cs:C1710.PostEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $groups : cs:C1710.GroupSelection:=ds:C1482.Group.all().query("type # 'Chat'")
	var $postVisibility : Collection:=["private"; "public"]
	var $postContents : Collection:=["Excited to share this post!"; "Here's an update for everyone!"; "Some thoughts for today."; "New content just posted!"; "Stay tuned for more updates!"; "Here's what I'm working on."; \
		"Sharing my latest project!"; "Grateful for the support!"; "A quick update for my followers."; "Thoughts of the day!"; "Just a random post."; "Good vibes only!"; "Feeling inspired today!"; "New milestone achieved!"; "Here's something new."; "Updates on my latest adventure."]
	var $postTitles : Collection:=["Exciting Announcement!"; "Community Update"; "Daily Reflections"; "Fresh Content Alert!"; "Upcoming News Teaser"; "Current Endeavors"; "Project Showcase"; "Thankful Moment"; "Follower Check-In"; \
		"Philosophical Musings"; "Casual Thoughts"; "Positive Energy"; "Inspired Moments"; "Milestone Celebration"; "Innovative Ideas"; "Adventure Highlights"]
	var $index : Integer:=0
	var $col : Collection:=[True:C214; False:C215]
	While ($index<=$postContents.length)
		$newPost:=ds:C1482.Post.new()
		$newPost.user:=$users.at(Random:C100%($users.length))
		$newPost.group:=$groups.at(Random:C100%($groups.length))
		$newPost.createdAt:=Current date:C33()
		$newPost.title:=$postTitles.at(Random:C100%($postTitles.length))
		$newPost.content:=$postContents.at(Random:C100%($postContents.length))
		$newPost.mediaUrl:="Media Url"
		$newPost.enableComments:=$col.at(Random:C100%($col.length))
		$newPost.visibility:=$postVisibility.at(Random:C100%($postVisibility.length))
		$newPost.isKeyUpdate:=$col.at(Random:C100%($col.length))
		$newPost.save()
		$index+=1
	End while 
	
Function generateWallPosts()  //generating $user $posts
	var $newPost : cs:C1710.PostEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $postVisibility : Collection:=["private"; "public"]
	var $postContents:=["Excited to share my latest update!"; "Here's what's been going on lately!"; "Just some reflections from today."; "Fresh content just went live!"; "More updates coming soon - stay tuned!"; "Working on something exciting!"; \
		"Presenting my recent project!"; "Thankful for all the support!"; "Quick update for all my followers."; "Today's thoughts and insights!"; "Just sharing a little something."; "Positive vibes only here!"; "Feeling motivated today!"; \
		"Reached a new goal - grateful!"; "Something fresh for you all!"; "Here's the latest from my journey."]
	var $postTitles : Collection:=["Latest Update Alert!"; "Life Lately: A Snapshot"; "Daily Reflections & Thoughts"; "New Content Release!"; "Stay Tuned for More!"; "Exciting Work in Progress"; "Showcasing My New Project"; \
		"Heartfelt Gratitude"; "Follower Update"; "Insights of the Day"; "A Little Something to Share"; "Positivity Central"; "Motivated and Ready!"; "Grateful for New Achievements"; "Fresh Ideas Delivered"; "Journey Highlights"]
	var $col : Collection:=[True:C214; False:C215]
	var $index : Integer:=0
	While ($index<=$postContents.length)
		$newPost:=ds:C1482.Post.new()
		$newPost.user:=$users.at(Random:C100%($users.length))
		$newPost.createdAt:=Current date:C33()
		$newPost.title:=$postTitles.at(Random:C100%($postTitles.length))
		$newPost.content:=$postContents.at(Random:C100%($postContents.length))
		$newPost.mediaUrl:="Media Url"
		$newPost.enableComments:=$col.at(Random:C100%($col.length))
		$newPost.visibility:=$postVisibility.at(Random:C100%($postVisibility.length))
		$newPost.isKeyUpdate:=$col.at(Random:C100%($col.length))
		$newPost.save()
		$index+=1
	End while 
	
Function generateUserViews()  //generating $user views
	var $newUserView : cs:C1710.UserViewEntity
	var $index : Integer:=0
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $posts : cs:C1710.PostSelection:=ds:C1482.Post.all()
	While ($index<=15)
		$newUserView:=ds:C1482.UserView.new()
		$newUserView.viewedAt:=Current date:C33()
		$newUserView.post:=$posts.at(Random:C100%($posts.length))
		$newUserView.user:=$users.at(Random:C100%($users.length))
		$newUserView.save()
		$index+=1
	End while 
	
Function generateComments()  //generating $comments
	var $newComment : cs:C1710.CommentEntity
	var $index : Integer:=0
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $posts : cs:C1710.PostSelection:=ds:C1482.Post.all()
	var $postComments : Collection:=["Great post! Thanks for sharing."; "Really insightful; I learned a lot."; "Couldn't agree more!"; "This is very helpful; appreciate it."; "Looking forward to more posts like this!"; "Thanks for the information!"; \
		"Interesting perspective; thanks!"; "Well said!"; "I have a question about this."; "Amazing content as always."; "Loved this post!"; "Very inspiring!"; "Thank you for the detailed post."; "This is exactly what I needed!"; "Keep up the great work!"]
	While ($index<=15)
		$newComment:=ds:C1482.Comment.new()
		$newComment.post:=$posts.at(Random:C100%($posts.length))
		$newComment.content:=$postComments.at(Random:C100%($postComments.length))
		$newComment.createdAt:=Current date:C33()
		$newComment.user:=$users.at(Random:C100%($users.length))
		$newComment.save()
		$index+=1
	End while 
	
Function generateReactions()  //generating reactions
	var $comments : cs:C1710.CommentSelection:=ds:C1482.Comment.all()
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $posts : cs:C1710.PostSelection:=ds:C1482.Post.all()
	var $reactionTypes : Collection:=["Like"; "Love"; "Haha"]
	var $newReaction : cs:C1710.ReactionEntity
	var $index : Integer:=0
	While ($index<=15)
		$newReaction:=ds:C1482.Reaction.new()
		$newReaction.post:=$posts.at(Random:C100%($posts.length))
		$newReaction.comment:=$comments.at(Random:C100%($comments.length))
		$newReaction.user:=$users.at(Random:C100%($users.length))
		$newReaction.createdAt:=Current date:C33()
		$newReaction.reactionType:=$reactionTypes.at(Random:C100%($reactionTypes.length))
		$newReaction.save()
		$index+=1
	End while 
	
Function generateMessages()  //generating $messages
	var $newMessage : cs:C1710.MessageEntity
	var $messages : Collection:=["Hey! How have you been?"; "Just checking in. Hope all is well!"; "Are you available for a quick call?"; "I wanted to share something exciting with you!"; "Let's catch up soon!"; "Thanks for reaching out!"; "Can you help me with something?"; \
		"It was great seeing you recently!"; "I'll send you the details later."; "Let me know if you need anything."; "Looking forward to our meeting!"; "Hope you're having a great day!"; "Just wanted to say hello!"; "When's a good time to chat?"; "Thank you for your help!"]
	var $index : Integer:=0
	var $col : Collection:=[True:C214; False:C215]
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	While ($index<=15)
		$newMessage:=ds:C1482.Message.new()
		$newMessage.sender:=$users.at(Random:C100%($users.length))
		$newMessage.receiver:=$users.at(Random:C100%($users.length))
		$newMessage.type:="Direct"
		$newMessage.content:=$messages.at(Random:C100%($messages.length))
		$newMessage.createdAt:=Current date:C33()
		$newMessage.atHour:=Current time:C178()
		$newMessage.isDraft:=$col.at(Random:C100%($col.length))
		$newMessage.isRead:=$col.at(Random:C100%($col.length))
		$newMessage.isHidden:=$col.at(Random:C100%($col.length))
		$newMessage.isPinned:=$col.at(Random:C100%($col.length))
		$newMessage.isMuted:=$col.at(Random:C100%($col.length))
		$newMessage.save()
		$index+=1
	End while 
	
Function generatingGroupMessages()  //generating $group $messages
	var $newMessage : cs:C1710.MessageEntity
	var $messages : Collection:=["Hey everyone! How's it going with you all?"; "Just checking in with the group. Hope everyone's doing well!"; "Is everyone available for a quick group call?"; "I've got something exciting to share with you all!"; \
		"Let's plan a time to catch up soon!"; "Thanks; everyone; for being so awesome!"; "Does anyone in the group have advice or suggestions?"; "It was wonderful catching up with the group recently!"; "I'll share the details with you all later!"; \
		"Feel free to reach out if anyone needs anything!"; "Looking forward to our group meeting soon!"; "Wishing everyone a fantastic day!"; "Just wanted to say hello to the group!"; "When's a good time for everyone to chat?"; "Thank you all for your support and help!"]
	var $index : Integer:=0
	var $col : Collection:=[True:C214; False:C215]
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $groups : cs:C1710.GroupSelection:=ds:C1482.Group.all().query("type = 'Chat'")
	While ($index<=15)
		$newMessage:=ds:C1482.Message.new()
		$newMessage.sender:=$users.at(Random:C100%($users.length))
		$newMessage.receiverGroup:=$groups.at(Random:C100%($groups.length))
		$newMessage.type:="Group"
		$newMessage.content:=$messages.at(Random:C100%($messages.length))
		$newMessage.createdAt:=Current date:C33()
		$newMessage.atHour:=Current time:C178()
		$newMessage.isDraft:=$col.at(Random:C100%($col.length))
		$newMessage.isRead:=$col.at(Random:C100%($col.length))
		$newMessage.isHidden:=$col.at(Random:C100%($col.length))
		$newMessage.isPinned:=$col.at(Random:C100%($col.length))
		$newMessage.isMuted:=$col.at(Random:C100%($col.length))
		$newMessage.save()
		$index+=1
	End while 
	
Function generateNotifications()
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $newNotification : cs:C1710.NotificationEntity
	var $notifications : Collection:=["You have a new follower!"; "Your post received a new like."; "Someone commented on your post."; "You were mentioned in a comment."; "New message received."; "Your friend just joined the platform!"; \
		"Event reminder: Don't miss out!"; "Your profile was viewed recently."; "Update: Policy changes were made."; "You received a friend request."; "Someone reacted to your comment."; "New group invitation received."; "Your settings were updated."; "A new post was shared in your group."; "You have unread notifications."]
	var $notifTypes : Collection:=["New post!"; "New comment!"; "New invitation!"]
	var $col : Collection:=[True:C214; False:C215]
	var $index : Integer:=0
	While ($index<=$notifications.length)
		$newNotification:=ds:C1482.Notification.new()
		$newNotification.user:=$users.at(Random:C100%($users.length))
		$newNotification.content:=$notifications.at(Random:C100%($notifications.length))
		$newNotification.type:=$notifTypes.at(Random:C100%($notifTypes.length))
		$newNotification.isPrior:=$col.at(Random:C100%($col.length))
		$newNotification.isRead:=$col.at(Random:C100%($col.length))
		$newNotification.isTurnedOff:=$col.at(Random:C100%($col.length))
		$newNotification.save()
		$index+=1
	End while 
	
Function generateActivityLog()  //generate activityLog
	var $newActivityLog : cs:C1710.ActivityLogEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $index : Integer:=0
	var $posts : cs:C1710.PostSelection:=ds:C1482.Post.all()
	var $logContent : Collection:=["You added a new comment under the post: "+String:C10($posts.first().title); "You added a new post in the feed !: "+String:C10($posts.first().title); "You followed a new user!"; "You unfollowed a user!"]
	While ($index<=5)
		$newActivityLog:=ds:C1482.ActivityLog.new()
		$newActivityLog.content:=$logContent.at(Random:C100%($logContent.length))
		$newActivityLog.logDate:=Current date:C33()
		$newActivityLog.logHour:=Current time:C178()
		$newActivityLog.user:=$users.at(Random:C100%($users.length))
		$newActivityLog.save()
		$index+=1
	End while 
	
	
Function generateNote()  //generate note
	var $newNote : cs:C1710.NoteEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $notesContents : Collection:=["Submit the monthly sales report by EOD."; "Prepare the slides for the quarterly review meeting."; "Schedule one-on-one meetings with team members next week."; "Follow up with the IT department regarding the system update."; \
		"Review the new marketing strategy proposal before the team meeting."; "Send an email to clients about the updated project timelines."; "Complete the onboarding checklist for the new hire."; "Arrange a training session for the updated software tools."; \
		"Organize the files for the upcoming audit."; "Prepare feedback for the design team's latest project draft."]
	var $content : Text
	var $newContributor : cs:C1710.ContributionEntity
	var $titles : Collection:=["Monthly Report Submission"; "Quarterly Review Preparation"; "One-on-One Scheduling"; "IT System Update Follow-Up"; "Marketing Strategy Review"; "Client Timeline Update"; "New Hire Onboarding"; "Software Training Session"; \
		"Audit File Organization"; "Design Feedback Preparation"]
	For each ($content; $notesContents)
		$newNote:=ds:C1482.Note.new()
		$newNote.title:=$titles.at(Random:C100%($titles.length))
		$newNote.content:=$content
		$newNote.writer:=$users.at(Random:C100%($users.length))
		$newNote.createdAt:=Current date:C33()
		$newNote.updateTime:=Current time:C178()
		$newNote.save()
		$newContributor:=ds:C1482.Contribution.new()
		$newContributor.note:=$newNote
		$newContributor.user:=$newNote.writer
		$newContributor.save()
	End for each 
	
Function generateNoteContributions()  //generate note contribution
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $notes : cs:C1710.NoteSelection:=ds:C1482.Note.all()
	var $newContributor : cs:C1710.ContributionEntity
	var $index : Integer:=0
	While ($index<=$notes.length)
		$newContributor:=ds:C1482.Contribution.new()
		$newContributor.user:=$users.at(Random:C100%($users.length))
		$newContributor.note:=$notes.at(Random:C100%($notes.length))
		$newContributor.save()
		$index+=1
	End while 
	
	
Function generateNoteComments()  //generate note $comments
	var $comments : Collection:=["Make sure to include the updated sales figures for accuracy."; "Double-check the formatting and ensure all key points are covered."; \
		"Consider discussing goals for the next quarter during these meetings."; "Verify the timeline for the update with the IT team before following up."; \
		"Highlight any areas that need clarification before the meeting."; "Ensure the email is professional and includes all necessary details."; "Confirm that all required documents are prepared for onboarding."; \
		"Coordinate with the trainer to finalize the agenda and materials."; "Organize files by department to streamline the audit process."; "Focus on specific areas of improvement for the design feedback."]
	var $notes : cs:C1710.NoteSelection:=ds:C1482.Note.all()
	var $newNoteComment : cs:C1710.CommentEntity
	var $users : cs:C1710.UserSelection:=ds:C1482.User.all()
	var $comment : Text
	For each ($comment; $comments)
		$newNoteComment:=ds:C1482.Comment.new()
		$newNoteComment.content:=$comment
		$newNoteComment.createdAt:=Current date:C33()
		$newNoteComment.note:=$notes.at(Random:C100%($notes.length))
		$newNoteComment.user:=$users.at(Random:C100%($users.length))
		$newNoteComment.save()
	End for each 
	
	
	
	// //to fill
	
	
	
	// function generateData()
	// 	this.generateUsers()
	// 	this.generateTeams()
	// 	this.linkUserToTeam()
	// 	this.generateGroups()
	// 	this.generateEvents()
	// 	this.generateGroupMembers()
	// 	this.generateFriends()
	// 	this.generateGroupPosts()
	// 	this.generateWallPosts()
	// 	this.generateUserViews()
	// 	this.generateComments()
	// 	this.generateReactions()
	// 	this.generateMessages()
	// 	this.generateNotifications()
	
	// function dropData()
	// 	var $status : object
	// 	$status = ds.User.all().drop()
	// 	$status = ds.Team.all().drop()
	// 	$status = ds.TeamMember.all().drop()
	// 	$status = ds.Group.all().drop()
	// 	$status = ds.Event.all().drop()
	// 	$status = ds.GroupMember.all().drop()
	// 	$status = ds.Friendship.all().drop()
	// 	$status = ds.Post.all().drop()
	// 	$status = ds.UserView.all().drop()
	// 	$status = ds.Comment.all().drop()
	// 	$status = ds.Reaction.all().drop()
	// 	$status = ds.Message.all().drop()
	// 	$status = ds.Notification.all().drop()
	
	// function generateUsers()
	// 	var $userClass : cs.Qodly.Users
	// 	var $cloudUsers : collection
	// 	var $user; info : object
	// 	var $newUser : cs.UserEntity
	// 	var $teams : collection = ["CST"; "4D Support"; "QA"; "Cloud"; "SI"; "UI/UX"]
	// 	var $isAccountActive : collection = [true; false]
	// 	var $locations : collection = ["New York; USA"; "London; UK"; "Toronto; Canada"; "Sydney; Australia"; "Tokyo; Japan"; "Berlin; Germany"; "Paris; France"; "Dubai; UAE"; "São Paulo; Brazil"; "Singapore"; "Hong Kong"; "San Francisco; USA"; "Mumbai; India"; "Cape Town; South Africa"; "Seoul; South Korea"]
	// 	var $skills : collection = ["Project Management ;Data Analysis; Graphic Design ; Software Development; Public Speaking"; "Digital Marketing ;Time Management; Content Writing; Search Engine Optimization (SEO); Customer Service"; \
		// 		"Financial Analysis ;Team Leadership ;Critical Thinking; Problem Solving; Event Planning"]
	// 	var $jobTitles : collection = ["Software Engineer"; "Data Scientist"; "Web Developer"; "Machine Learning Engineer"; "Cybersecurity Analyst"; "Database Administrator"; "Cloud Architect"; "Front-End Developer"; \
		// 		"Back-End Developer"; "DevOps Engineer"; "AI Researcher"; "IT Project Manager"; "Systems Analyst"; "Network Engineer"; "UI/UX Designer"]
	// 	$userClass = cs.Qodly.Users.new()
	// 	$cloudUsers = $userClass.getAllUsers()
	// 	for each ($user; $cloudUsers)
	// 		$newUser = ds.User.new()
	// 		$newUser.email = $user.email
	// 		$newUser.firstName = $user.firstname
	// 		$newUser.lastName = $user.lastname
	// 		$newUser.workPhone = "06********"
	// 		$newUser.jobTitle = $jobTitles.at(random%($jobTitles.length))
	// 		$newUser.skills = $skills.at(random%($skills.length))
	// 		$newUser.location = $locations.at(random%($locations.length))
	// 		$newUser.hasActiveAccount = $isAccountActive.at(random%($isAccountActive.length))
	// 		$newUser.password = $user.firstname
	// 		$newUser.department=$teams.at(random%($teams.length))
	// 		info = $newUser.save()
	// 	end 
	
	// function generateTeams()
	// 	var $newTeam : cs.TeamEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $teams : collection = ["CST team"; "4D Support team"; "QA team"; "Cloud team"; "SI team"; "UI/UX team"]
	// 	var dep : text
	// 	var $index : integer = 0
	// 	for each (dep; $teams)
	// 		$newTeam = ds.Team.new()
	// 		$newTeam.label = dep
	// 		$newTeam.manager = $users.at(random%($users.length))
	// 		$newTeam.save()
	// 	end 
	
	// function linkUserToTeam()
	// 	var $teamMember : cs.TeamMemberEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $teams : cs.TeamSelection = ds.Team.all()
	// 	var $user : cs.UserEntity
	// 	var $index : integer = 0
	// 	while ($index <= $teams.length)
	// 		$teamMember=ds.TeamMember.new()
	// 		$teamMember.team=$teams.at(random%($teams.length))
	// 		$teamMember.user= $users.at(random%($users.length))
	// 		$teamMember.save()
	// 		$index += 1
	// 	end 
	
	// function generateGroups()
	// 	var $groups : collection = [{name: "Everyone at Qodly"; description: "Important updates every employee should read. Default group for all employees of Qodly team."}; \
		// 		{name: "Qodly CST"; description: "A group for Qodly Customer Success Team."}; \
		// 		{name: "Qodly Cloud"; description: "A group for Qodly Cloud Team."}; \
		// 		{name: "Workplace Tips"; description: "Helpful tips to make Workplace more effective for you and your coworkers. A place for your feedback to help us improve your experience."}; \
		// 		{name: "Everyone at 4D"; description: "Important updates every employee should read. Default group for all employees of 4D."}]
	// 	var $group : object
	// 	var $types : collection = ["Private"; "Public"]
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $newGroup : cs.GroupEntity
	
	// 	for each ($group; $groups)
	// 		$newGroup = ds.Group.new()
	// 		$newGroup.name = $group.name
	// 		$newGroup.type = $types.at(random%$types.length)
	// 		$newGroup.description = $group.description
	// 		$newGroup.createdAt = current Date()
	// 		$newGroup.createdBy = $users.at(random%($users.length))
	// 		$newGroup.save()
	// 	end 
	
	// function generateEvents()
	// 	var $newEvent : cs.EventEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $eventNames : collection = ["Annual Company Retreat"; "Team Building Workshop"; "Product Launch Event"; "Monthly Review Meeting"; "Networking Mixer"; "Holiday Celebration"; "Training Session"; "Client Appreciation Day"; "Project Kickoff"; \
		// 		"End-of-Year Party"; "Strategy Planning Session"; "Community Outreach"; "Charity Fundraiser"; "Innovation Conference"; "Performance Review"; "Sales Strategy Meeting"]
	// 	var $eventDescriptions : collection = ["Join us for a day of fun and team building!"; "We're excited to launch our new product!"; "Let's review our achievements and plan for the next month."; "Network with industry professionals and expand your connections."; "Celebrate the holidays with food; fun; and festivities!"; \
		// 		"A workshop to enhance team collaboration and skills."; "Learn about our upcoming projects and goals."; "Thanking our clients for their continued support."; "Discussing strategies for the upcoming quarter."; "A chance to innovate and share new ideas."; "Reviewing performance metrics and feedback."; \
		// 		"Giving back to the community through volunteer work."; "Fundraising event for a great cause!"; "A conference focused on the latest trends in our industry."; "Team strategy meeting to align our goals."; "End the year with a celebration of our successes!"]
	// 	var $index : integer = 0
	// 	while ($index <= 15)
	// 		$newEvent = ds.Event.new()
	// 		$newEvent.name = $eventNames.at(random%$eventNames.length)
	// 		$newEvent.description = $eventDescriptions.at(random%$eventDescriptions.length)
	// 		$newEvent.createdAt = current Date()
	// 		$newEvent.createdBy = $users.at(random%($users.length))
	// 		$newEvent.startDate = add to Date(current Date(); 0; 0; 5)
	// 		$newEvent.save()
	// 		$index += 1
	// 	end 
	
	// function generateFriends()
	// 	var $newFriend : cs.FriendshipEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $friends : cs.UserSelection
	// 	var $user; friend : cs.UserEntity
	// 	for each ($user; $users)
	// 		$friends = $users.minus($user)//$users.query("ID #= :1"; $user.ID)
	// 		for each (friend; $friends)
	// 			$newFriend = ds.Friendship.new()
	// 			$newFriend.user1 = $user
	// 			$newFriend.user2 = friend
	// 			$newFriend.isAccepted = true
	// 			$newFriend.createdAt = current Date()
	// 			$newFriend.save()
	// 		end 
	// 	end 
	
	// function generateGroupMembers()
	// 	var $newGroupMember : cs.GroupMemberEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $user : cs.UserEntity
	// 	var $groups : cs.GroupSelection = ds.Group.all()
	// 	var $group : cs.GroupEntity
	// 	var $col : collection = [true; false]
	// 	for each ($user; $users)
	// 		for each ($group; $groups)
	// 			$newGroupMember = ds.GroupMember.new()
	// 			$newGroupMember.joinedAt = current Date()
	// 			$newGroupMember.group = $group
	// 			$newGroupMember.user = $user
	// 			$newGroupMember.isAdmin = $col.at(random%2)
	// 			$newGroupMember.isPinned = $col.at(random%2)
	// 			$newGroupMember.save()
	// 		end 
	// 	end 
	
	// function generateGroupPosts()
	// 	var $newPost : cs.PostEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $groups : cs.GroupSelection = ds.Group.all()
	// 	var $postVisibility : collection = ["private"; "public"]
	// 	var $postContents : collection = ["Excited to share this post!"; "Here's an update for everyone!"; "Some thoughts for today."; "New content just posted!"; "Stay tuned for more updates!"; "Here's what I'm working on."; \
		// 		"Sharing my latest project!"; "Grateful for the support!"; "A quick update for my followers."; "Thoughts of the day!"; "Just a random post."; "Good vibes only!"; "Feeling inspired today!"; "New milestone achieved!"; "Here's something new."; "Updates on my latest adventure."]
	// 	var $index : integer = 0
	// 	while ($index <= 15)
	// 		$newPost = ds.Post.new()
	// 		$newPost.user = $users.at(random%($users.length))
	// 		$newPost.group = $groups.at(random%($groups.length))
	// 		$newPost.createdAt = current Date()
	// 		$newPost.content = $postContents.at(random%($postContents.length))
	// 		$newPost.mediaUrl = "Media Url"
	// 		$newPost.enableComments = false
	// 		$newPost.visibility = $postVisibility.at(random%($postVisibility.length))
	// 		$newPost.save()
	// 		$index += 1
	// 	end 
	
	// function generateWallPosts()
	// 	var $newPost : cs.PostEntity
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $postVisibility : collection = ["private"; "public"]
	// 	var $postContents = ["Excited to share my latest update!"; "Here's what's been going on lately!"; "Just some reflections from today."; "Fresh content just went live!"; "More updates coming soon - stay tuned!"; "Working on something exciting!"; \
		// 		"Presenting my recent project!"; "Thankful for all the support!"; "Quick update for all my followers."; "Today's thoughts and insights!"; "Just sharing a little something."; "Positive vibes only here!"; "Feeling motivated today!"; \
		// 		"Reached a new goal - grateful!"; "Something fresh for you all!"; "Here's the latest from my journey."]
	// 	var $index : integer = 0
	// 	while ($index <= 15)
	// 		$newPost = ds.Post.new()
	// 		$newPost.user = $users.at(random%($users.length))
	// 		$newPost.createdAt = current Date()
	// 		$newPost.content = $postContents.at(random%($postContents.length))
	// 		$newPost.mediaUrl = "Media Url"
	// 		$newPost.enableComments = false
	// 		$newPost.visibility = $postVisibility.at(random%($postVisibility.length))
	// 		$newPost.save()
	// 		$index += 1
	// 	end 
	
	// function generateUserViews()
	// 	var $newUserView : cs.UserViewEntity
	// 	var $index : integer = 0
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $posts : cs.PostSelection = ds.Post.all()
	// 	while ($index <= 15)
	// 		$newUserView = ds.UserView.new()
	// 		$newUserView.viewedAt = current Date()
	// 		$newUserView.post = $posts.at(random%($posts.length))
	// 		$newUserView.user = $users.at(random%($users.length))
	// 		$newUserView.save()
	// 		$index += 1
	// 	end 
	
	// function generateComments()
	// 	var $newComment : cs.CommentEntity
	// 	var $index : integer = 0
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $posts : cs.PostSelection = ds.Post.all()
	// 	var $postComments : collection = ["Great post! Thanks for sharing."; "Really insightful; I learned a lot."; "Couldn't agree more!"; "This is very helpful; appreciate it."; "Looking forward to more posts like this!"; "Thanks for the information!"; \
		// 		"Interesting perspective; thanks!"; "Well said!"; "I have a question about this."; "Amazing content as always."; "Loved this post!"; "Very inspiring!"; "Thank you for the detailed post."; "This is exactly what I needed!"; "Keep up the great work!"]
	// 	while ($index <= 15)
	// 		$newComment = ds.Comment.new()
	// 		$newComment.post = $posts.at(random%($posts.length))
	// 		$newComment.content = $postComments.at(random%($postComments.length))
	// 		$newComment.createdAt = current Date()
	// 		$newComment.user = $users.at(random%($users.length))
	// 		$newComment.save()
	// 		$index += 1
	// 	end 
	
	// function generateReactions()
	// 	var $comments : cs.CommentSelection = ds.Comment.all()
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $posts : cs.PostSelection = ds.Post.all()
	// 	var $reactionTypes : collection = ["Like"; "Love"; "Haha"]
	// 	var $newReaction : cs.ReactionEntity
	// 	var $index : integer = 0
	// 	while ($index <= 15)
	// 		$newReaction = ds.Reaction.new()
	// 		$newReaction.post = $posts.at(random%($posts.length))
	// 		$newReaction.comment = $comments.at(random%($comments.length))
	// 		$newReaction.user = $users.at(random%($users.length))
	// 		$newReaction.createdAt = current Date()
	// 		$newReaction.reactionType = $reactionTypes.at(random%($reactionTypes.length))
	// 		$newReaction.save()
	// 		$index += 1
	// 	end 
	
	// function generateMessages()
	// 	var $newMessage : cs.MessageEntity
	// 	var $messages : collection = ["Hey! How have you been?"; "Just checking in. Hope all is well!"; "Are you available for a quick call?"; "I wanted to share something exciting with you!"; "Let's catch up soon!"; "Thanks for reaching out!"; "Can you help me with something?"; \
		// 		"It was great seeing you recently!"; "I'll send you the details later."; "Let me know if you need anything."; "Looking forward to our meeting!"; "Hope you're having a great day!"; "Just wanted to say hello!"; "When's a good time to chat?"; "Thank you for your help!"]
	// 	var messageTypes : collection = ["Direct"; "Group"]
	// 	var $index : integer = 0
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	while ($index <= 15)
	// 		$newMessage = ds.Message.new()
	// 		$newMessage.sender = $users.at(random%($users.length))
	// 		$newMessage.receiver = $users.at(random%($users.length))
	// 		$newMessage.type = messageTypes.at(random%(messageTypes.length))
	// 		$newMessage.content = $messages.at(random%($messages.length))
	// 		$newMessage.createdAt = current Date()
	// 		$newMessage.save()
	// 		$index += 1
	// 	end 
	
	// function generateNotifications()
	// 	var $users : cs.UserSelection = ds.User.all()
	// 	var $newNotification : cs.NotificationEntity
	// 	var $notifications : collection = ["You have a new follower!"; "Your post received a new like."; "Someone commented on your post."; "You were mentioned in a comment."; "New message received."; "Your friend just joined the platform!"; \
		// 		"Event reminder: Don't miss out!"; "Your profile was viewed recently."; "Update: Policy changes were made."; "You received a friend request."; "Someone reacted to your comment."; "New group invitation received."; "Your settings were updated."; "A new post was shared in your group."; "You have unread notifications."]
	// 	var $notifTypes:collection = ["New post!"; "New comment!"; "New invitation!"] 
	// 		var $index : integer = 0
	// 	while ($index <= 15)
	// 		$newNotification = ds.Notification.new()
	// 		$newNotification.user = $users.at(random%($users.length))
	// 		$newNotification.content = $notifications.at(random%($notifications.length))
	// 		$newNotification.type = $notifTypes.at(random%($notifTypes.length))
	// 		$newNotification.save()
	// 		$index += 1
	// 	end 
	
	
	
	
	
	
	
	