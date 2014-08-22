tests
testFromString
	| spec |
	{ 'foo bar'. 'foobar'. ''. '-foo:bar'. 'foo:+bar'. '+:bar'. 'foo:'. ':' } do: [ :string |
		self
			should: [ LGitRefSpec fromString: string ]
			raise: AssertionFailure ].
		
	spec := LGitRefSpec fromString: 'foo:bar'.
	self assert: spec source equals: 'foo'.
	self assert: spec destination equals: 'bar'.
	self assert: spec asString equals: 'foo:bar'.
	self deny: spec isForced.
	
	spec := LGitRefSpec fromString: '+foo:bar'.
	self assert: spec source equals: 'foo'.
	self assert: spec destination equals: 'bar'.
	self assert: spec asString equals: '+foo:bar'.
	self assert: spec isForced.
	
	spec := LGitRefSpec fromString: ':bar'.
	self assert: spec source equals: ''.
	self assert: spec destination equals: 'bar'.
	self assert: spec asString equals: ':bar'.
	self deny: spec isForced.
	
	spec := LGitRefSpec fromString: 'refs/heads/foo:refs/heads/bar'.
	self assert: spec source equals: 'refs/heads/foo'.
	self assert: spec destination equals: 'refs/heads/bar'.
	self assert: spec asString equals: 'refs/heads/foo:refs/heads/bar'.
	self deny: spec isForced.
	
	spec := LGitRefSpec fromString: '+refs/heads/foo:refs/heads/bar'.
	self assert: spec source equals: 'refs/heads/foo'.
	self assert: spec destination equals: 'refs/heads/bar'.
	self assert: spec asString equals: '+refs/heads/foo:refs/heads/bar'.
	self assert: spec isForced.
	
	spec := LGitRefSpec fromString: ':refs/heads/bar'.
	self assert: spec source equals: ''.
	self assert: spec destination equals: 'refs/heads/bar'.
	self assert: spec asString equals: ':refs/heads/bar'.
	self deny: spec isForced