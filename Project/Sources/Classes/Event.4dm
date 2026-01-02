Class extends DataClass

//search by event name or owner's fullName
exposed Function search($search : Text) : cs:C1710.EventSelection
	If ($search#"")
		return This:C1470.query("name = :1 or createdBy.fullName = :1"; "@"+$search+"@")
	Else 
		return This:C1470.all()
	End if 