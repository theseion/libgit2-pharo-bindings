libgit - calls
tree_lookup: out repo: repo id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(LGitReturnCodeEnum git_tree_lookup(LGitTree * out, LGitRepository repo, LGitId * objectId))
		options: #(  )