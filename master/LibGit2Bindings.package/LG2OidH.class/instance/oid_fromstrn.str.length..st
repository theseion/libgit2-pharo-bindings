foreign interface
oid_fromstrn: out str: str length: length 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_fromstrn(git_oid * out, NBExternalString str, NBInt32 length)) options: #(  )