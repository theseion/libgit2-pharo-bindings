instance creation
externalNew: numberOfElements
	^ self
		onAddress: (LGitGlobal allocate: elementSize * numberOfElements)
		size: numberOfElements