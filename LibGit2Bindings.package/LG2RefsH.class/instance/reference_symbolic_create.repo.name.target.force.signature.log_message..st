foreign interface
reference_symbolic_create: out repo: repo name: name target: target force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_symbolic_create(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString name, NBExternalString target, NBInt32 force, git_signature * signature, NBExternalString log_message)) options: #(  )