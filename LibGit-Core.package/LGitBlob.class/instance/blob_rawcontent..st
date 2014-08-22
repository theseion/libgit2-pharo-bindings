libgit - calls
blob_rawcontent: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(void * git_blob_rawcontent(self)) options: #(  )