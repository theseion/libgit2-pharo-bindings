foreign interface
oid_fromstrp: out str: str 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_fromstrp(git_oid * out, NBExternalString str)) options: #(  )