foreign interface
remote_get_refspec: remote n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRefspecO git_remote_get_refspec(LG2GitRemoteO remote, NBInt32 n)) options: #(  )