testing
isProperRepository
	| return |
	return := self
		repository_open_ext: self
		path: self repositoryReference pathString
		flags: LGitOpenFlagEnum GIT_REPOSITORY_OPEN_NO_SEARCH
		ceiling_dirs: nil.
		
	^ return = LGitReturnCodeEnum GIT_OK