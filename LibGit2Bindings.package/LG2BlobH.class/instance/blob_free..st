foreign interface
blob_free: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_blob_free(LG2GitBlobO blob)) options: #(  )