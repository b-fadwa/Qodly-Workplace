//%attributes = {}


var $fakeData : cs:C1710.FakeData:=cs:C1710.FakeData.new()
$fakeData.dropData()
$fakeData.generateData()  //do not execute now (has an issue that crashes the server)
ALERT:C41("generate dta")

// var groups : cs.GroupSelection = ds.Group.all().query("type = 'Chat'")
// if (groups.length # 0)
// 	groups.groupMembers.drop()
// 	groups.drop()
// end

// trace
// var c,c2:collection
// var b:boolean

// c = new Collection(new Object("a",1,"b","orange"); 2; 3)
// c2 = new Collection(new Object("a",1,"b","orange"); 3; 2)
// b = c.equal(c2) // true

// var messages:cs.MessageSelection=ds.Message.all()
// var message:cs.MessageEntity
// for each(message; messages)
// 	message.isDraft = false
// 	message.save()
// end

// var events : cs.EventSelection = ds.Event.all()
// var event : cs.EventEntity
// for each (event; events)
// 	if (event.startDate < current Date() && event.endDate = null)
// 		event.endDate=add to Date(current Date(); 0; 0; -1)
// 		event.save()

// 	end 
// end

// var posts:cs.PostSelection = ds.Post.all()
// var post:cs.PostEntity
// for each(post; posts)
// 	post.title = "Post "+string(post.ID)
// 	post.save()
// end


// ds.Token.all().drop()

// ds.User.all().query("email = 'public'").first().drop()

// ds.User.all().query("email = 'qodly4d@gmail.com'").first().drop()

// ds.TeamMember.query("user.email = 'fadwa.bayed@4d.com'").drop()