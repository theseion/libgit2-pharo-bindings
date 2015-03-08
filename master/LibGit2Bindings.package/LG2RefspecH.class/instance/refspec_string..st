foreign interface
refspec_string: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_refspec_string(LG2GitRefspecO refspec)) options: #(  )