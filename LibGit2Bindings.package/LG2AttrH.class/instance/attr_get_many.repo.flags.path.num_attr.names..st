foreign interface
attr_get_many: values_out repo: repo flags: flags path: path num_attr: num_attr names: names 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_attr_get_many(NBCharacterType * * values_out, LG2GitRepositoryO repo, uint32_t flags, NBExternalString path, NBInt32 num_attr, NBCharacterType * * names)) options: #(  )