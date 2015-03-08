foreign interface
tag_lookup: out repo: repo id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_lookup(LG2GitTagO * out, LG2GitRepositoryO repo, git_oid * id)) options: #(  )