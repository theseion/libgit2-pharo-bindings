libgit - calls
index_write_tree: out index: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_index_write_tree(LG2GitOidS * out, self)) options: #(  )