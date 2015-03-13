libgit-calls
remote_add_push: remote refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_add_push(self, NBExternalString refspec)) options: #(  )