foreign interface
revwalk_push: walk commit_id: commit_id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_revwalk_push(#LGitRevwalkType walk, LGitId * commit_id)) options: #(  )