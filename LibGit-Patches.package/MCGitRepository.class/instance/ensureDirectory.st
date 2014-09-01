private
ensureDirectory
	directory ifNil: [ self directory: self defaultPath ].
	
	self directory exists ifTrue: [ ^ self ].
	
	self isRemote
		ifTrue: [ self createCloneRepository ]
		ifFalse: [ self createLocalRepository ]