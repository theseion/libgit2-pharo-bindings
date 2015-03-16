foreign interface
tag_delete: repo tag_name: tag_name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_delete(LG2GitRepositoryO repo, NBExternalString tag_name)) options: #(  )