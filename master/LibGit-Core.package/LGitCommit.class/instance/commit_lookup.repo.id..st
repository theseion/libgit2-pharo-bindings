libgit - calls
commit_lookup: commit repo: repo id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_commit_lookup(LGitCommit * commit, LGitRepository repo, LGitId * objectId)) options: #(  )