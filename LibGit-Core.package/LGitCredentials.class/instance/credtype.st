accessing structure variables
credtype
	"This method was automatically generated"
	^LGitCredentialsTypeEnum fromInteger: (handle unsignedLongAt: 1)