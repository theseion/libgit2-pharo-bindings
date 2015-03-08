testing
isProperRepository
	| return |
	return := self
		repository_open_ext: self
		path: self repositoryReference pathString
		flags: (LGitOpenFlagEnum at: #GIT_REPOSITORY_OPEN_NO_SEARCH) value
		ceiling_dirs: nil.
		
	^ return = (LGitReturnCodeEnum at: #GIT_OK)