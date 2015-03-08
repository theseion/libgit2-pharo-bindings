foreign interface
oid_cpy: out src: src 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_oid_cpy(git_oid * out, git_oid * src)) options: #(  )