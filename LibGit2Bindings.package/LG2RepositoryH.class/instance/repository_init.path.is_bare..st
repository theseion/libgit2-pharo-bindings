foreign interface
repository_init: out path: path is_bare: is_bare 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_init(LG2GitRepositoryO * out, NBExternalString path, NBUInt32 is_bare)) options: #(  )