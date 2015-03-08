foreign interface
blob_lookup: blob repo: repo id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_lookup(LG2GitBlobO * blob, LG2GitRepositoryO repo, git_oid * id)) options: #(  )