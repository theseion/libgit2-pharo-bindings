foreign interface
blob_lookup_prefix: blob repo: repo id: id len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_lookup_prefix(LG2GitBlobO * blob, LG2GitRepositoryO repo, git_oid * id, NBInt32 len)) options: #(  )