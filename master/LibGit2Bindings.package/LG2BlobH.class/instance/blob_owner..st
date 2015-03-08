foreign interface
blob_owner: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_blob_owner(LG2GitBlobO blob)) options: #(  )