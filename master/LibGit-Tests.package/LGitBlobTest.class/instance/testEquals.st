tests
testEquals
	| repo blob blob2 |
	repo := self newRepo state4WithCommit.
	blob := repo head resolve object tree entries first entries first object.
	blob2 := repo head resolve object tree entries first entries first object.
	self assert: blob equals: blob.
	self assert: blob equals: blob2.
	self deny: blob == blob2.
	self assert: blob contents equals: blob2 contents.
	self assert: blob id equals: blob2 id