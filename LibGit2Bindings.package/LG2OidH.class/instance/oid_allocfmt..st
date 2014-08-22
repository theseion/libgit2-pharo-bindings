foreign interface
oid_allocfmt: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_oid_allocfmt(git_oid * id)) options: #(  )