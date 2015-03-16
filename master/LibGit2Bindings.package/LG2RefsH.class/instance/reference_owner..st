foreign interface
reference_owner: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_reference_owner(LG2GitReferenceO ref)) options: #(  )