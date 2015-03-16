foreign interface
remote_add_fetch: remote refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_add_fetch(LG2GitRemoteO remote, NBExternalString refspec)) options: #(  )