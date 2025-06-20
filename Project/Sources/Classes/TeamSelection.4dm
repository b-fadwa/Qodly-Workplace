Class extends EntitySelection

// used in the page "seeProfile" - tab "about" (dialog editYourTeams)
exposed function addToTeam($option : cs.TeamEntity)->$selection : cs.TeamSelection
	$selection := this.copy()
	$selection := $selection.add($option)
	
// used in the page "seeProfile" - tab "about" (dialog editYourTeams)
exposed function removeTeam($option : cs.TeamEntity)->$selection : cs.TeamSelection
	$selection := this.minus($option)