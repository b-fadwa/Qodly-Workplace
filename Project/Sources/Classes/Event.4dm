Class extends DataClass

exposed Function search($search : Text) : cs:C1710.EventSelection  //used
	If ($search#"")
		return This:C1470.query("name = :1 or createdBy.fullName = :1"; "@"+$search+"@")
	End if 