libgit - calls
commit_author: commit 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitSignatureS * git_commit_author(self)) options: #(  )