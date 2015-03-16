foreign interface
odb_open_rstream: out db: db oid: oid 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_open_rstream(LG2GitOdbStreamO * out, LG2GitOdbO db, git_oid * oid)) options: #(  )