libgit - calls
treebuilder_write: id bld: bld 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_treebuilder_write(LGitId * id, self))
		options: #(  )