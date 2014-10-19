running
tearDown
	self reference in: [ :ref | ref exists 
		ifFalse: [  ^ self  ]
		ifTrue: [ ref deleteAll ] ]