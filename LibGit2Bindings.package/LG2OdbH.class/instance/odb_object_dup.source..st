foreign interface
odb_object_dup: dest source: source 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_object_dup(LG2GitOdbObjectO * dest, LG2GitOdbObjectO source)) options: #(  )