foreign interface
push_add_refspec: push refspec: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_add_refspec(LG2GitPushO push, NBExternalString refspec)) options: #(  )