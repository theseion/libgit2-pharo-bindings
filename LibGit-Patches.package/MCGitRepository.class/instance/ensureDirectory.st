private
ensureDirectory
	self isRemote
		ifTrue: [ self createCloneRepository ]
		ifFalse: [ self createLocalRepository ].
		
	self directory: self projectPath