libgit-calls
pathspec_match_diff: out diff: diff flags: flags ps: ps
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(int git_pathspec_match_diff(LGitPathSpecMatchList * self, LGitDiff diff, LGitPathSpecFlagTypeEnum flags, LGitPathSpec ps))
		options: #(  )