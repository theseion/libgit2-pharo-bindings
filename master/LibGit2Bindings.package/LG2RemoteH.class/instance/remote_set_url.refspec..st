foreign interface
remote_set_url: remote refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_set_url(LG2GitRemoteO remote, NBExternalString refspec)) options: #(  )