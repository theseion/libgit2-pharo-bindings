libgit - calls
packbuilder_new: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(#LGitReturnCodeEnum git_packbuilder_new(LGitPackBuilder * self, LGitRepository repo))
		options: #(  )