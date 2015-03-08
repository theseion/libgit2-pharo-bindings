foreign interface
status_list_new: out repo: repo opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_status_list_new(LG2GitStatusListO * out, LG2GitRepositoryO repo, git_status_options * opts)) options: #(  )