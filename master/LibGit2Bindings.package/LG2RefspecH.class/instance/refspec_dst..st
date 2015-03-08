foreign interface
refspec_dst: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_refspec_dst(LG2GitRefspecO refspec)) options: #(  )