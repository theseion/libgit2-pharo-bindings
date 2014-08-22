foreign interface
odb_read_header: len_out type_out: type_out db: db id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_read_header(NBInt32 * len_out, git_otype * type_out, LG2GitOdbO db, git_oid * id)) options: #(  )