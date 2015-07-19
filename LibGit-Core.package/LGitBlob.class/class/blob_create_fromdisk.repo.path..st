libgit-calls
blob_create_fromdisk: objectId repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_blob_create_fromdisk(LGitId * objectId, LGitRepository repo, NBExternalString path)) options: #(  )