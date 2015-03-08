libgit - calls
commit_committer: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitSignature * git_commit_committer(self)) options: #(  )