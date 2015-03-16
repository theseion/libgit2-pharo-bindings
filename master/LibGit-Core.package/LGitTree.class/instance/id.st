accessing
id
	<todo: 'aaaaaaaah!! I hate this code!'>
	(id notNil or: [ handle isNull ]) ifTrue: [  ^ id ].
	
	^ self tree_id: self