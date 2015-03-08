foreign interface
treebuilder_create: out source: source 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_treebuilder_create(LG2GitTreebuilderO * out, LG2GitTreeO source)) options: #(  )