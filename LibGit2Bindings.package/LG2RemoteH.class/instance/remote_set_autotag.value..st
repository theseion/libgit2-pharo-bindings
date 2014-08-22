foreign interface
remote_set_autotag: remote value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_remote_set_autotag(LG2GitRemoteO remote, git_remote_autotag_option_t value)) options: #(  )