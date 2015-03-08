foreign interface
revparse: revspec repo: repo spec: spec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revparse(git_revspec * revspec, LG2GitRepositoryO repo, NBExternalString spec)) options: #(  )