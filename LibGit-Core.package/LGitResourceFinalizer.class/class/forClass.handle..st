instance creation
forClass: aClass handle: aHandle
	^ self new
		setClass: aClass;
		setHandle: aHandle;
		yourself