foreign interface
odb_hashfile: out path: path type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_hashfile(git_oid * out, NBExternalString path, git_otype type)) options: #(  )