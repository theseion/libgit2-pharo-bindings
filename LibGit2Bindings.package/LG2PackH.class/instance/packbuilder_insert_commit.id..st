foreign interface
packbuilder_insert_commit: pb id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_packbuilder_insert_commit(LG2GitPackbuilderO pb, LGitId * id)) options: #(  )