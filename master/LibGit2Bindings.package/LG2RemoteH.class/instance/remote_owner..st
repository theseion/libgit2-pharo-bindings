foreign interface
remote_owner: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_remote_owner(LG2GitRemoteO remote)) options: #(  )