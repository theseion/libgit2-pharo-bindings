foreign interface
odb_refresh: db 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_refresh(LG2GitOdbO db)) options: #(  )