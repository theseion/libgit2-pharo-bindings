tests
testStringsGet
	| strings |
	strings := #( 'string 1' 'string 2' 'string 3').
	
	array := LGitStringArray externalNew
		count: strings size;
		strings: strings;
		yourself.
		
	self assert: array strings equals: strings.
	array strings do: [ :string |
		self assert: string class == ByteString ]