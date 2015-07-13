managing accessors
fieldNamesAndProtocols
	^ Dictionary new
		add: #at: -> 'accessing';
		add: #at:put: -> 'accessing';
		yourself