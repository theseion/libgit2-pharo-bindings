foreign interface
refspec_force: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_refspec_force(LG2GitRefspecO refspec)) options: #(  )