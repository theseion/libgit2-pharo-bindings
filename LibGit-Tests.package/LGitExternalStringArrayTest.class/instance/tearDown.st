running
tearDown
	super tearDown.
	
	array ifNil: [ ^ self ].
	
	array free