foreign interface
remote_refspec_count: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_refspec_count(LG2GitRemoteO remote)) options: #(  )