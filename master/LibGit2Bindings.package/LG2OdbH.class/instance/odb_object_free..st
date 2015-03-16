foreign interface
odb_object_free: object 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_odb_object_free(LG2GitOdbObjectO object)) options: #(  )