libgit-calls
index_write_tree: out index: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_index_write_tree(LGitId * out, self)) options: #(  )