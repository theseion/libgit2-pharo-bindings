libgit-calls
commit_id: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitId * git_commit_id(self)) options: #(  )