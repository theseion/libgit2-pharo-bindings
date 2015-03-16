foreign interface
blob_rawcontent: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid * git_blob_rawcontent(LG2GitBlobO blob)) options: #(  )