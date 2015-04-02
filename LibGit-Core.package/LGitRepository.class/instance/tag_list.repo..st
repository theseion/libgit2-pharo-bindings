libgit-calls
tag_list: tag_names repo: repo
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_tag_list(LGitStringArray * tag_names, LGitRepository repo)) 
		options: #(  )