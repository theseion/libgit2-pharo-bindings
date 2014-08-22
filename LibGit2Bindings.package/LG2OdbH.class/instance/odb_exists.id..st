foreign interface
odb_exists: db id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_exists(LG2GitOdbO db, git_oid * id)) options: #(  )