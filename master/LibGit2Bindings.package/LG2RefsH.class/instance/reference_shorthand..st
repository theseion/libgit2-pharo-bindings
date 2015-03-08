foreign interface
reference_shorthand: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_reference_shorthand(LG2GitReferenceO ref)) options: #(  )