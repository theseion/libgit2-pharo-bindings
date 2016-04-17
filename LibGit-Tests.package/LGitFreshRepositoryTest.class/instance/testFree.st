tests
testFree
	| repo theHandle |
	repo := self newRepo state3Opened.
	theHandle := repo getHandle.
	self deny: theHandle isNull.
	repo free.
	self assert: theHandle isNull