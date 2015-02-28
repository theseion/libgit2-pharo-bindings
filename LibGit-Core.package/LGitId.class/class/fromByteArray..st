instance creation
fromByteArray: aByteArray
	^ self new
		prim_id: (LGitIdData fromByteArray: aByteArray);
		yourself