foreign interface
oid_ncmp: a b: b len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_ncmp(git_oid * a, git_oid * b, NBInt32 len)) options: #(  )