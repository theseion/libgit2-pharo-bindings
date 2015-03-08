foreign interface
odb_object_size: object 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_object_size(LG2GitOdbObjectO object)) options: #(  )