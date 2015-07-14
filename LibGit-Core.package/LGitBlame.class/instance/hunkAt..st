operations
hunkAt: anInteger
	"use 1 based offset"
	^ self
		blame_get_hunk_byindex: self
		index: anInteger - 1