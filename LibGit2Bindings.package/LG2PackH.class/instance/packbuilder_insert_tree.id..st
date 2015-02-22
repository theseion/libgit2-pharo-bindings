foreign interface
packbuilder_insert_tree: pb id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_packbuilder_insert_tree(LG2GitPackbuilderO pb, LGitId * id)) options: #(  )