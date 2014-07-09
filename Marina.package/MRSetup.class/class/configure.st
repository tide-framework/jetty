public
configure
	| config serverBasePath serverPort |
	config := MRConfig new.
	serverBasePath := UIManager default
		request: 'Base path where the server is going to be deployed (e.g., www.marina.eu)'
		initialAnswer: config hostname
		title: 'Server base path'.
	serverBasePath isEmptyOrNil
		ifFalse: [ config hostname: serverBasePath ].
	serverPort := UIManager default
		request: 'Port where the server should listen to (e.g., 8080)'
		initialAnswer: config port
		title: 'Server port'.
	serverPort isEmptyOrNil
		ifFalse: [ config port: (Number readFrom: serverPort) ].
	^ config