foreign interface
odb_num_backends: odb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_num_backends(LG2GitOdbO odb)) options: #(  )