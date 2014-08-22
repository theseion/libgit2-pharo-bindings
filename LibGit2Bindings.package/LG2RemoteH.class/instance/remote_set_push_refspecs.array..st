foreign interface
remote_set_push_refspecs: remote array: array 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_set_push_refspecs(LG2GitRemoteO remote, git_strarray * array)) options: #(  )