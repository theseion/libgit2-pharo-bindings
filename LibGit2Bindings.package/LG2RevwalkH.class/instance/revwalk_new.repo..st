foreign interface
revwalk_new: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_new(LG2GitRevwalkO * out, LG2GitRepositoryO repo)) options: #(  )