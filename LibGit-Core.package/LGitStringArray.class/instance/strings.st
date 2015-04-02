accessing
strings
	^ (LGitExternalStringArray
		onAddress: self prim_strings 
		size: self count) asArray