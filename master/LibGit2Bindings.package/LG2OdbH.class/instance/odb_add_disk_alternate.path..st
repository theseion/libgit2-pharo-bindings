foreign interface
odb_add_disk_alternate: odb path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_add_disk_alternate(LG2GitOdbO odb, NBExternalString path)) options: #(  )