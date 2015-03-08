foreign interface
checkout_tree: repo treeish: treeish opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_checkout_tree(LG2GitRepositoryO repo, LG2GitObjectO treeish, git_checkout_options * opts)) options: #(  )