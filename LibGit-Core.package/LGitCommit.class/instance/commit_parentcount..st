libgit-calls
commit_parentcount: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(uint git_commit_parentcount(self)) options: #(  )