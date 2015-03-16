foreign interface
blob_is_binary: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_is_binary(LG2GitBlobO blob)) options: #(  )