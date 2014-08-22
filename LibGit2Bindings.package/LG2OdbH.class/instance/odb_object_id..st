foreign interface
odb_object_id: object 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_odb_object_id(LG2GitOdbObjectO object)) options: #(  )