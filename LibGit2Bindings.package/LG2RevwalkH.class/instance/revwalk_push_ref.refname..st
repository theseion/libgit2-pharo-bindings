foreign interface
revwalk_push_ref: walk refname: refname
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_revwalk_push_ref(#LGitRevwalkType walk, NBExternalString refname)) options: #(  )