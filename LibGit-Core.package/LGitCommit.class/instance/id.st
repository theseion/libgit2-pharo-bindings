accessing
id
	<todo: 'plain ugly!'>
	id ifNotNil: [ ^ id ].
	self signalIfNotReady.
	
	^ self commit_id: self