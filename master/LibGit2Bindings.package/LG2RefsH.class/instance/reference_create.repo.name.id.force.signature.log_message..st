foreign interface
reference_create: out repo: repo name: name id: id force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_create(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString name, git_oid * id, NBInt32 force, git_signature * signature, NBExternalString log_message)) options: #(  )