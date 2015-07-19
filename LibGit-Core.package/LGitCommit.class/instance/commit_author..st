libgit-calls
commit_author: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitSignature * git_commit_author(self)) options: #(  )