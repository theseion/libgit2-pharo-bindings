foreign interface
oid_streq: id str: str 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_streq(git_oid * id, NBExternalString str)) options: #(  )