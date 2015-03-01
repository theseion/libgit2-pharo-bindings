accessing
object
	| object  |
	self signalIfNotReady.
	
	object := LGitObject of: self repository freeAfterUse: true.
	self withReturnHandlerDo: [ 
		self
			tree_entry_to_object: object 
			repo: self repository
			entry: self ].
			
	^ object concreteObject