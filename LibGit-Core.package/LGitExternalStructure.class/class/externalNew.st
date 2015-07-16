instance creation
externalNew
	| inst |
	inst := self fromPointer: (LGitGlobal allocate: self instanceSize).
	inst initialize.
	NBExternalResourceManager addResource: inst.
	^ inst