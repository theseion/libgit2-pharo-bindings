instance creation
uniqueInstance
	^ uniqueInstance
		ifNil: [ 
			self initialize.
			uniqueInstance ]
		ifNotNil: [ uniqueInstance ]