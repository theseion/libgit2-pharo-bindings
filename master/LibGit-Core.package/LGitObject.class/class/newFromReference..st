instance creation
newFromReference: aReference
	| instance |
	"need to have a handle for the object"
	instance := self of: aReference repository.
	self
		withReturnHandlerDo: [ 
			self
				object_lookup: instance
				repo: aReference repository
				id: aReference privObjectIdPtr
				type: LGitObjectTypeEnum GIT_OBJ_ANY ].
	^ instance concreteObject