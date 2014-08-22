foreign interface
remote_stats: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_transfer_progress * git_remote_stats(LG2GitRemoteO remote)) options: #(  )