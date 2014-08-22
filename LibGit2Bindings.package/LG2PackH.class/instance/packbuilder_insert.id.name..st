foreign interface
packbuilder_insert: pb id: id name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_packbuilder_insert(LG2GitPackbuilderO pb, git_oid * id, NBExternalString name)) options: #(  )