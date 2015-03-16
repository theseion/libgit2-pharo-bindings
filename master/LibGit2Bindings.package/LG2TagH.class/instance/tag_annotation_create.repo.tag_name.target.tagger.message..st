foreign interface
tag_annotation_create: oid repo: repo tag_name: tag_name target: target tagger: tagger message: message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_annotation_create(git_oid * oid, LG2GitRepositoryO repo, NBExternalString tag_name, LG2GitObjectO target, git_signature * tagger, NBExternalString message)) options: #(  )