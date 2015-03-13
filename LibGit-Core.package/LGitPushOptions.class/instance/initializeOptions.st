initialize
initializeOptions
	self
		push_init_options: self
		version: (LGitPushOptionsVersionEnum at: #LGIT_PUSH_OPTIONS_VERSION_1)