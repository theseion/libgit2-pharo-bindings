tests
testAutoRelease
	| theHandle |
	theHandle := nil.
	self 
		assertGarbageCollectAll: LGitStringArray
		after: [ 
			| tmpArray |
			tmpArray := LGitStringArray withAll: #( 'string 1' 'string 2' 'string 3').
			theHandle := tmpArray getHandle ].
	
	self assert: theHandle isNull