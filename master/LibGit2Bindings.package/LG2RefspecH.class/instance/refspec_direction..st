foreign interface
refspec_direction: spec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_direction git_refspec_direction(LG2GitRefspecO spec)) options: #(  )