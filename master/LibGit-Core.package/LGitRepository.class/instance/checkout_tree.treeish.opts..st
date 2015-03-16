libgit-calls
checkout_tree: repo treeish: treeish opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_checkout_tree(self, LGitObject treeish, LGitCheckoutOptions * opts)) options: #(  )