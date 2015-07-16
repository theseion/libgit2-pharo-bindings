private
register: aHandle for: aClass
	self allocationRegistry
		at: aHandle value
		put: aClass class theNonMetaClass