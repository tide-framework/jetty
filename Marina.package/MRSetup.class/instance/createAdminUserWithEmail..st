creation
createAdminUserWithEmail: aString
	| user email |
	user := MRUser new.
	email := aString.
	email ifNil: [ 
		UIManager default 
			request: 'Email of the admin user. This MUST be a valid email address.' 
			initialAnswer: 'your.email@server.com' 
			title: 'Email of admin' ].
	user email: email.
	user fullName: email.
	user save.
	^ user