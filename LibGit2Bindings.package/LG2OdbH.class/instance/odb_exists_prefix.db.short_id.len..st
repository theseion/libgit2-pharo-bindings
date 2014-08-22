foreign interface
odb_exists_prefix: out db: db short_id: short_id len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_exists_prefix(git_oid * out, LG2GitOdbO db, git_oid * short_id, NBInt32 len)) options: #(  )