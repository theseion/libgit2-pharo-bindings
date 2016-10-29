tests
testPrinting
	| repo blob |
	repo := self newRepo state4WithCommit.
	blob := repo head object tree entries first entries first object.
	self assert: blob names size equals: 1.
	"self assert: blob printString equals: 'a LGitBlob (''foo'')'"