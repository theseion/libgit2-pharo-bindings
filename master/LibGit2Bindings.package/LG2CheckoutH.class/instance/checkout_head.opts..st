foreign interface
checkout_head: repo opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_checkout_head(LG2GitRepositoryO repo, git_checkout_options * opts)) options: #(  )