tests
testStringsGet
	| strings |
	strings := #( 'string 1' 'string 2' 'string 3').
	
	array := LGitStringArray withAll: strings.
		
	self assert: array strings equals: strings.
	array strings do: [ :string |
		self assert: string class == ByteString ]