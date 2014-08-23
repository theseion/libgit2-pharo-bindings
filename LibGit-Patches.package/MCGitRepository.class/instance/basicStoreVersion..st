storing
basicStoreVersion: aVersion
	self readonly
		ifTrue: [ 
		^ self error:
	          'The filetree repository: ' , self description printString
	            , ' was created read only.' ].
	
	self pull.
	MCFileTreeWriter fileOut: aVersion on: self.
	self commitAndPush: aVersion