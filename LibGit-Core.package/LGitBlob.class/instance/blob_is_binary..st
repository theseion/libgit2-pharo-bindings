libgit-calls
blob_is_binary: blob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(Boolean git_blob_is_binary(self))
		options: #()