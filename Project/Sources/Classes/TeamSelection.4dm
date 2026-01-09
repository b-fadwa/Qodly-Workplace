Class extends EntitySelection

exposed Function addToTeam($option : cs:C1710.TeamEntity)->$selection : cs:C1710.TeamSelection
	$selection:=This:C1470.copy()
	$selection:=$selection.add($option)
	
exposed Function removeTeam($option : cs:C1710.TeamEntity)->$selection : cs:C1710.TeamSelection
	$selection:=This:C1470.minus($option)