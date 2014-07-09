public
nonInteractiveSetupWith: aMarinaConfig
	self
		setupVoyageWith: aMarinaConfig;
		dropDatabase;
		setupWebsiteWithAdmin: aMarinaConfig adminUser.
	self 
		startWebserverOn: aMarinaConfig hostname 
		port: aMarinaConfig port