foreign interface
tag_list: tag_names repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_list(git_strarray * tag_names, LG2GitRepositoryO repo)) options: #(  )