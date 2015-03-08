foreign interface
oid_equal: a b: b 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_equal(git_oid * a, git_oid * b)) options: #(  )