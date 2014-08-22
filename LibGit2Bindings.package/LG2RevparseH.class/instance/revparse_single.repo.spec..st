foreign interface
revparse_single: out repo: repo spec: spec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revparse_single(LG2GitObjectO * out, LG2GitRepositoryO repo, NBExternalString spec)) options: #(  )