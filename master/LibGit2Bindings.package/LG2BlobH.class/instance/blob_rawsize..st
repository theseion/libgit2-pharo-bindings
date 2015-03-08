foreign interface
blob_rawsize: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_off_t git_blob_rawsize(LG2GitBlobO blob)) options: #(  )