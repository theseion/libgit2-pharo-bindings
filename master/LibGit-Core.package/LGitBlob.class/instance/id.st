accessing
id
	<todo: 'plain ugly!'>
	(id notNil or: [ self isNull ]) ifTrue: [ ^ id ].
	
	^ self blob_id: self