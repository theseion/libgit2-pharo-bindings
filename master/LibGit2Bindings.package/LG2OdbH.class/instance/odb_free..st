foreign interface
odb_free: db 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_odb_free(LG2GitOdbO db)) options: #(  )