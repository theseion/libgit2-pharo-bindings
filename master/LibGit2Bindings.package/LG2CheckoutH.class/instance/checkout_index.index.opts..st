foreign interface
checkout_index: repo index: index opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_checkout_index(LG2GitRepositoryO repo, LG2GitIndexO index, git_checkout_options * opts)) options: #(  )