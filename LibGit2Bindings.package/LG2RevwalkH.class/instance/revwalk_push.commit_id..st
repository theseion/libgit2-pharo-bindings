foreign interface
revwalk_push: walk commit_id: commit_id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_push(LG2GitRevwalkO walk, git_oid * commit_id)) options: #(  )