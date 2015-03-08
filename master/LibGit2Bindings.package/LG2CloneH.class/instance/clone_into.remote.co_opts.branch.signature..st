foreign interface
clone_into: repo remote: remote co_opts: co_opts branch: branch signature: signature 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_clone_into(LG2GitRepositoryO repo, LG2GitRemoteO remote, git_checkout_options * co_opts, NBExternalString branch, git_signature * signature)) options: #(  )