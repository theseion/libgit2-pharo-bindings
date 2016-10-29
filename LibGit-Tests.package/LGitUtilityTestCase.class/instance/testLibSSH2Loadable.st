tests
testLibSSH2Loadable
	| version |
	version := self libSSH2Version: 0.
	self assert: version isString