libgit - calls
push_add_refspec: push refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_push_add_refspec(self, String refspec)) options: #(  )