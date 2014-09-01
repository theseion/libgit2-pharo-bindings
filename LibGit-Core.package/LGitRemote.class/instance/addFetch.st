operations
addFetch
	self withReturnHandlerDo: [ 
		self
			remote_add_fetch: self
			refspec: self fetchSpec ]