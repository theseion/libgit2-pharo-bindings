tests
testCheckout
	| repo |
	repo := self newRepo state4WithCommit.
	self
		should: [ repo checkout: nil ]
		raise: AssertionFailure.
	self
		should: [ repo checkout: ' ' ]
		raise: AssertionFailure.
	"master is already checked out but this won't raise an exception"
	self
		shouldnt: [ repo checkout: 'master' ]
		raise: LGitError.
	self
		should: [ repo checkout: 'homer' ]
		raise: LGitError