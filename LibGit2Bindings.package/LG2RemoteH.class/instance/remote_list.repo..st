foreign interface
remote_list: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_list(git_strarray * out, LG2GitRepositoryO repo)) options: #(  )