testing
isDirect
	^ (self reference_type: self) = (self libGitReferenceTypes at: #GIT_REF_OID)