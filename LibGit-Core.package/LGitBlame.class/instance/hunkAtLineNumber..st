operations
hunkAtLineNumber: anInteger
	"first line has index 1"
	^ self
		blame_get_hunk_byline: self
		lineno: anInteger