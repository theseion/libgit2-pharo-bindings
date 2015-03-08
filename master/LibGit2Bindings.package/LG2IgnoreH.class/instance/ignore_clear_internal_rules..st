foreign interface
ignore_clear_internal_rules: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_ignore_clear_internal_rules(LG2GitRepositoryO repo)) options: #(  )