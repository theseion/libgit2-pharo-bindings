foreign interface
blob_create_fromworkdir: id repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_create_fromworkdir(git_oid * id, LG2GitRepositoryO repo, NBExternalString path)) options: #(  )