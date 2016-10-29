tests
testAutoRelease

	| theHandle |

	theHandle := nil.
	self 
		assertGarbageCollectAll: LGitRepository 
		after: [ 
			| repo |
			repo := self newRepo state3Opened.
			theHandle := repo getHandle ].
	
	self assert: theHandle isNull