public
nonInteractiveSetupWith: aMarinaConfig
	self
		setupVoyageWith: aMarinaConfig;
		dropDatabase;
		setupWebsite: aMarinaConfig adminUser.
	self 
		startWebserverOn: aMarinaConfig hostname 
		port: aMarinaConfig port