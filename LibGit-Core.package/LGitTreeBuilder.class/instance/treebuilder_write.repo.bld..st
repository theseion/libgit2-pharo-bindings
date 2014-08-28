libgit - calls
treebuilder_write: id repo: repo bld: bld 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_treebuilder_write(LGitId * id, LGitRepository repo, self)) options: #(  )