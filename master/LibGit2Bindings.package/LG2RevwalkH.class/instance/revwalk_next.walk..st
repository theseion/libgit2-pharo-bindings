foreign interface
revwalk_next: out walk: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_next(LGitId * out, #LGitRevwalkType walk)) options: #(  )