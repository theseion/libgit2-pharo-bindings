foreign interface
odb_hash: out data: data len: len type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_hash(git_oid * out, NBVoid * data, NBInt32 len, git_otype type)) options: #(  )