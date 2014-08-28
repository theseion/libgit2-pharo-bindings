libgit - calls
tree_lookup: out repo: repo id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_tree_lookup(LGitTree * out, LGitRepository repo, LGitId * objectId)) options: #(  )