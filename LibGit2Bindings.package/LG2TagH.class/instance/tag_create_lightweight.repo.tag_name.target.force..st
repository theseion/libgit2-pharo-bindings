foreign interface
tag_create_lightweight: oid repo: repo tag_name: tag_name target: target force: force 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_create_lightweight(git_oid * oid, LG2GitRepositoryO repo, NBExternalString tag_name, LG2GitObjectO target, NBInt32 force)) options: #(  )