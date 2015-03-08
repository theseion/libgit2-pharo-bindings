foreign interface
reference_name: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_reference_name(LG2GitReferenceO ref)) options: #(  )