foreign interface
tag_list_match: tag_names pattern: pattern repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_list_match(git_strarray * tag_names, NBExternalString pattern, LG2GitRepositoryO repo)) options: #(  )