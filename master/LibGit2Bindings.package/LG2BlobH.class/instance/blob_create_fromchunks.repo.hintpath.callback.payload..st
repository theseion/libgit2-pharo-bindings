foreign interface
blob_create_fromchunks: id repo: repo hintpath: hintpath callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_create_fromchunks(git_oid * id, LG2GitRepositoryO repo, NBExternalString hintpath, LG2GitBlobChunkCb callback, NBVoid * payload)) options: #( optMayGC )