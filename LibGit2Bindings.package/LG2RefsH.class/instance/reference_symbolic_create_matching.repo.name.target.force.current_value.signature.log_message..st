foreign interface
reference_symbolic_create_matching: out repo: repo name: name target: target force: force current_value: current_value signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_symbolic_create_matching(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString name, NBExternalString target, NBInt32 force, NBExternalString current_value, git_signature * signature, NBExternalString log_message)) options: #(  )