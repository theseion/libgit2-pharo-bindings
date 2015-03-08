foreign interface
stash_drop: repo index: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_stash_drop(LG2GitRepositoryO repo, NBInt32 index)) options: #(  )