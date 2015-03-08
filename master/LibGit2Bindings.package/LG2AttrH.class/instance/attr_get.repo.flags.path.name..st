foreign interface
attr_get: value_out repo: repo flags: flags path: path name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_attr_get(NBCharacterType * * value_out, LG2GitRepositoryO repo, uint32_t flags, NBExternalString path, NBExternalString name)) options: #(  )