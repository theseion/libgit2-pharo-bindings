operations
addPush
	self withReturnHandlerDo: [ 
		self
			remote_add_push: self
			refspec: self fetchSpec ]