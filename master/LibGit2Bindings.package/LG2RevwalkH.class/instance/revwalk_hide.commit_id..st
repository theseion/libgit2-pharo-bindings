foreign interface
revwalk_hide: walk commit_id: commit_id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_hide(#LGitRevwalkType walk, git_oid * commit_id)) options: #(  )