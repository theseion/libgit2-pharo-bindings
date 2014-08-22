foreign interface
odb_read_prefix: out db: db short_id: short_id len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_read_prefix(LG2GitOdbObjectO * out, LG2GitOdbO db, git_oid * short_id, NBInt32 len)) options: #(  )