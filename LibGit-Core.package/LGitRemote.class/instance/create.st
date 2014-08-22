operations
create
	<todo: 'use exceptions instead of assertions'>
	self assert: url notNil.
	self assert: self repository isReady.
	
	self hasFetchSpec
		ifFalse: [ self createWithoutSpec ]
		ifTrue: [ self createWithFetchSpec ]