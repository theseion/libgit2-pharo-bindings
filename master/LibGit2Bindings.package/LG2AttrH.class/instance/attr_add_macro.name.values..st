foreign interface
attr_add_macro: repo name: name values: values 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_attr_add_macro(LG2GitRepositoryO repo, NBExternalString name, NBExternalString values)) options: #(  )