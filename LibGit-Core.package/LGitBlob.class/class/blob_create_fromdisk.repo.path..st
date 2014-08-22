libgit - calls
blob_create_fromdisk: objectId repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_blob_create_fromdisk(LG2GitOidS * objectId, LGitRepository repo, String path)) options: #(  )