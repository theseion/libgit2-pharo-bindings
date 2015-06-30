operations
deltaAt: anInteger
	"use 1 based offset as in Smalltalk"
	^ self
		diff_get_delta: self
		idx: anInteger - 1