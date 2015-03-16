foreign interface
odb_add_alternate: odb backend: backend priority: priority 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_add_alternate(LG2GitOdbO odb, LG2GitOdbBackendO backend, NBInt32 priority)) options: #(  )