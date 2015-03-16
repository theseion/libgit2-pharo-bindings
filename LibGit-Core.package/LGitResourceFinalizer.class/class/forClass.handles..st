instance creation
forClass: aClass handles: aCollection
	^ self new
		setClass: aClass;
		setHandles: aCollection;
		yourself