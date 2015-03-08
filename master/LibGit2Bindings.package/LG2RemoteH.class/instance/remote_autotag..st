foreign interface
remote_autotag: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_remote_autotag_option_t git_remote_autotag(LG2GitRemoteO remote)) options: #(  )