foreign interface
refspec_src: refspec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_refspec_src(LG2GitRefspecO refspec)) options: #(  )