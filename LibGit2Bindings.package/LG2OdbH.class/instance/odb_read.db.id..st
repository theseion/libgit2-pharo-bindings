foreign interface
odb_read: out db: db id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_read(LG2GitOdbObjectO * out, LG2GitOdbO db, git_oid * id)) options: #(  )