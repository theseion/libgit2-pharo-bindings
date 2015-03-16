foreign interface
oid_fromstr: out str: str 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_fromstr(git_oid * out, NBExternalString str)) options: #(  )