foreign interface
remote_create: out repo: repo name: name url: url 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_create(LG2GitRemoteO * out, LG2GitRepositoryO repo, NBExternalString name, NBExternalString url)) options: #(  )