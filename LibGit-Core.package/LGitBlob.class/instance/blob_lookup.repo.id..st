libgit - calls
blob_lookup: blob repo: repo id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(#LGitReturnCodeEnum git_blob_lookup(LGitBlob * blob, LGitRepository repo, LGitId * objectId))
		options: #(  )