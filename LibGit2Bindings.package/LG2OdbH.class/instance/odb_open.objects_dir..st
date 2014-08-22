foreign interface
odb_open: out objects_dir: objects_dir 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_open(LG2GitOdbO * out, NBExternalString objects_dir)) options: #(  )