tests
testBigArray
	array := LGitExternalStringArray externalNew: 1000.
	1 to: array size do: [ :index |
		array at: index put: (String streamContents: [ :s | 
			1000 timesRepeat: [ s nextPut: (Character value: 96 + (index rem: 26)) ] ]) ].
	
	1 to: array size do: [ :index |
		| str |
		str := array at: index.
		self assert: str size equals: 1000.
		self assert: str first equals: (Character value: 96 + (index rem: 26)) ].
	
	array free.
	array := nil.