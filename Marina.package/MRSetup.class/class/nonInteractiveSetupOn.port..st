public
nonInteractiveSetupOn: hostName port: portNumber
	| serverPort |
	self
		setupVoyage;
		dropDatabase;
		setupWebsite.
	serverPort := Number readFrom: portNumber.
	self startWebserverWith: hostName port: serverPort