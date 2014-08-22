libgit - calls
blob_rawsize: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt64 git_blob_rawsize(self)) options: #(  )