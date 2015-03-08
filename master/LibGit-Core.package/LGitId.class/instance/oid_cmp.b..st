libgit-calls
oid_cmp: a b: b 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_cmp(LGitId * self, LGitId * b)) options: #(  )