foreign interface
branch_lookup: out repo: repo branch_name: branch_name branch_type: branch_type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_lookup(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString branch_name, git_branch_t branch_type)) options: #(  )