libgit-calls
revwalk_push_head: walk
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self 
		call: #(LGitReturnCodeEnum git_revwalk_push_head(self)) 
		options: #(  )