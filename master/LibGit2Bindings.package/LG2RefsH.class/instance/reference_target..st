foreign interface
reference_target: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_reference_target(LG2GitReferenceO ref)) options: #(  )