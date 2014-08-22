foreign interface
odb_write: out odb: odb data: data len: len type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_write(git_oid * out, LG2GitOdbO odb, NBVoid * data, NBInt32 len, git_otype type)) options: #(  )