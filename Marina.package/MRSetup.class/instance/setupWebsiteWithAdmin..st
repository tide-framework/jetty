actions
setupWebsiteWithAdmin: adminUserEmail
	MRStructure removeAll.
	MRRoot removeAll.
	MRUser removeAll.
	adminUser := self createAdminUserWithEmail: adminUserEmail.
	self root