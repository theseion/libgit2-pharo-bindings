running
tearDown
	self reference in: [ :ref | ref exists 
		ifFalse: [  ^ self  ]
		ifTrue: [ [ ref deleteAll ]
			on: FileDoesNotExist
			do: [ "ignore. Seems to be a glitch in the File plugin" ] ] ]