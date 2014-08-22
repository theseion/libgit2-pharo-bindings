foreign interface
oid_strcmp: id str: str 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_strcmp(git_oid * id, NBExternalString str)) options: #(  )