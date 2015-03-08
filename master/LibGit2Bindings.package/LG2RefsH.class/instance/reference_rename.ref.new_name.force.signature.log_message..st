foreign interface
reference_rename: new_ref ref: ref new_name: new_name force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_rename(LG2GitReferenceO * new_ref, LG2GitReferenceO ref, NBExternalString new_name, NBInt32 force, git_signature * signature, NBExternalString log_message)) options: #(  )