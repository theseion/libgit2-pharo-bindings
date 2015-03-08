foreign interface
ignore_add_rule: repo rules: rules 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_ignore_add_rule(LG2GitRepositoryO repo, NBExternalString rules)) options: #(  )