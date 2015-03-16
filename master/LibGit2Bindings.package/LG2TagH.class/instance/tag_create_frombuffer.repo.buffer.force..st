foreign interface
tag_create_frombuffer: oid repo: repo buffer: buffer force: force 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_create_frombuffer(git_oid * oid, LG2GitRepositoryO repo, NBExternalString buffer, NBInt32 force)) options: #(  )