libgit-calls
revwalk_new: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_revwalk_new(LGitRevwalk * self, LGitRepository repo))
		options: #(  )