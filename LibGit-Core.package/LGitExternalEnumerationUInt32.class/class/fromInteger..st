instance creation
fromInteger: aNumber 
	^ self perform: (self declaration 
		keyAtValue: aNumber  
		ifAbsent: [ ^ nil ])