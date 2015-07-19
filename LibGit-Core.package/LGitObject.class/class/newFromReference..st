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
				type: LGitObjectTypeEnum git_obj_any ].
	^ instance concreteObject