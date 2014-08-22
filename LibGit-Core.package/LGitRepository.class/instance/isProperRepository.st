testing
isProperRepository
	| return |
	return := self
		repository_open_ext: self
		path: self repositoryReference pathString
		flags: 0 "(LG2GitOpenFlagTE at: #GIT_REPOSITORY_OPEN_NO_SEARCH) value"
		ceiling_dirs: NBExternalAddress null.
		
	^ return = (LGitReturnCodeEnum at: #GIT_OK)