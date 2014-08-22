libgit - calls
blob_lookup: blob repo: repo id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_blob_lookup(LGitBlob * blob, LGitRepository repo, LG2GitOidS * objectId)) options: #(  )