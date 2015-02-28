foreign interface
revwalk_push_head: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_push_head(#LGitRevwalkType walk)) options: #(  )