foreign interface
odb_get_backend: out odb: odb pos: pos 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_get_backend(LG2GitOdbBackendO * out, LG2GitOdbO odb, NBInt32 pos)) options: #(  )