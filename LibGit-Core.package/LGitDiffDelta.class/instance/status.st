accessing structure variables
status
	"This method was automatically generated"
	^LGitDeltaTypeEnum fromInteger: (handle unsignedLongAt: 1)