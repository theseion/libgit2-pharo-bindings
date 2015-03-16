foreign interface
reference_symbolic_set_target: out ref: ref target: target signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_symbolic_set_target(LG2GitReferenceO * out, LG2GitReferenceO ref, NBExternalString target, git_signature * signature, NBExternalString log_message)) options: #(  )