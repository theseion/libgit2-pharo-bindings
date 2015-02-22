foreign interface
odb_add_backend: odb backend: backend priority: priority 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_odb_add_backend(LG2GitOdbO odb, LG2GitOdbBackendO backend, NBInt32 priority)) options: #(  )