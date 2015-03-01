libgit-calls
revwalk_next: out walk: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_revwalk_next(LGitId * out, self))
		options: #(  )