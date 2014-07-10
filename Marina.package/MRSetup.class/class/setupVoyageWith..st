public
setupVoyageWith: aMarinaConfig
	| repository |
	repository := VOMongoRepository 
					host: aMarinaConfig dbHostname
					port: aMarinaConfig dbPort
					database: aMarinaConfig dbName.
	repository enableSingleton.
	^ repository