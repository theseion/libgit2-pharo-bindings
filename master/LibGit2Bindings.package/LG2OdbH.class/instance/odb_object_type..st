foreign interface
odb_object_type: object 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_otype git_odb_object_type(LG2GitOdbObjectO object)) options: #(  )