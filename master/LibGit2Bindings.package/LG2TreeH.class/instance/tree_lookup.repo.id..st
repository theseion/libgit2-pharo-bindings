foreign interface
tree_lookup: out repo: repo id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_lookup(LG2GitTreeO * out, LG2GitRepositoryO repo, git_oid * id)) options: #(  )