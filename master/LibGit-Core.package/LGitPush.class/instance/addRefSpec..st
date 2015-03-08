operations
addRefSpec: aString
	self withReturnHandlerDo: [ self push_add_refspec: self refspec: aString ]