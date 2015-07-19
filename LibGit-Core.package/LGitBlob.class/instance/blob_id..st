libgit-calls
blob_id: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitId * git_blob_id(self)) options: #(  )