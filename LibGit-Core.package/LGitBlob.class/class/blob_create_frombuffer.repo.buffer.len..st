libgit-calls
blob_create_frombuffer: objectId repo: repo buffer: buffer len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_blob_create_frombuffer(LGitId * objectId, LGitRepository repo, NBVoid * buffer, NBInt32 len)) options: #(  )