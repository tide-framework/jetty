public
setupAll
	| config |
	(self confirm: 'This will erase your marina database, are you *really* sure?')
		ifTrue: [
			config := self configure. 
			self nonInteractiveSetupWith: config ]