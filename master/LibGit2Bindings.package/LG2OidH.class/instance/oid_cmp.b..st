foreign interface
oid_cmp: a b: b 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_cmp(git_oid * a, git_oid * b)) options: #(  )