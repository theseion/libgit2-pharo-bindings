foreign interface
revwalk_push_glob: walk range: range 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_push_glob(#LGitRevwalkType walk, NBExternalString range)) options: #(  )