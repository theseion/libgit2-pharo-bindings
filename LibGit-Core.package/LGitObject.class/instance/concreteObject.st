converting
concreteObject
	^ (self class classFor: self type) basicNew
		copyFrom: self;
		yourself