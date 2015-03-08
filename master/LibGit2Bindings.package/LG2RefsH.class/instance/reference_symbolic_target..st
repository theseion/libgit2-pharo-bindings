foreign interface
reference_symbolic_target: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_reference_symbolic_target(LG2GitReferenceO ref)) options: #(  )