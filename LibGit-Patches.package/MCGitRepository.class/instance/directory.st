accessing
directory
	^ directory ifNil: [ self ensureDirectory ]