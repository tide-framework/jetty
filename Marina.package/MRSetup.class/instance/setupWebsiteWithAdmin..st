actions
setupWebsiteWithAdmin: adminUserEmail
	adminUser := adminUserEmail.
	MRStructure removeAll.
	MRRoot removeAll.
	MRUser removeAll.
	self root