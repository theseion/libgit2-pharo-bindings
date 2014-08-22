foreign interface
remote_add_push: remote refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_add_push(LG2GitRemoteO remote, NBExternalString refspec)) options: #(  )