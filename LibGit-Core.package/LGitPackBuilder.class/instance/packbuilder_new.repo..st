libgit - calls
packbuilder_new: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(#LGitReturnCodeEnum git_packbuilder_new(LGitPackBuilder * self, LGitRepository repo))
		options: #(  )