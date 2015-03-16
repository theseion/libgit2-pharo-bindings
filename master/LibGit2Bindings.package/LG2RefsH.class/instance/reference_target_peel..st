foreign interface
reference_target_peel: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_reference_target_peel(LG2GitReferenceO ref)) options: #(  )