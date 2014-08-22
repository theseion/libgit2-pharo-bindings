foreign interface
oid_iszero: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_iszero(git_oid * id)) options: #(  )