libgit-calls
commit_time: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt64 git_commit_time(self)) options: #(  )