foreign interface
blob_id: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_blob_id(LG2GitBlobO blob)) options: #(  )