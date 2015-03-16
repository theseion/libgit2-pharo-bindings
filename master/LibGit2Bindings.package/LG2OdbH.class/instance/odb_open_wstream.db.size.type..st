foreign interface
odb_open_wstream: out db: db size: size type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_open_wstream(LG2GitOdbStreamO * out, LG2GitOdbO db, NBInt32 size, git_otype type)) options: #(  )