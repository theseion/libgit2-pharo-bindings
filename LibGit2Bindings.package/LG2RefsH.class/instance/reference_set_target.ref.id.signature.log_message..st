foreign interface
reference_set_target: out ref: ref id: id signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_set_target(LG2GitReferenceO * out, LG2GitReferenceO ref, git_oid * id, git_signature * signature, NBExternalString log_message)) options: #(  )