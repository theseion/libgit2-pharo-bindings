foreign interface
reference_create_matching: out repo: repo name: name id: id force: force current_id: current_id signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_create_matching(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString name, git_oid * id, NBInt32 force, git_oid * current_id, git_signature * signature, NBExternalString log_message)) options: #(  )