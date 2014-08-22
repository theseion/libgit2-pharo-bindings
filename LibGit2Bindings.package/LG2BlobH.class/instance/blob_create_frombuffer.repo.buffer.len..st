foreign interface
blob_create_frombuffer: id repo: repo buffer: buffer len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_create_frombuffer(git_oid * id, LG2GitRepositoryO repo, NBVoid * buffer, NBInt32 len)) options: #(  )