actions
setupWebsiteWithAdmin: adminUserEmail
	adminUser := self createAdminUserWithEmail: adminUserEmail.
	MRStructure removeAll.
	MRRoot removeAll.
	MRUser removeAll.
	self root