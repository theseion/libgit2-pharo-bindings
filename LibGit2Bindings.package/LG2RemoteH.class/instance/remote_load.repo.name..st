foreign interface
remote_load: out repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_load(LG2GitRemoteO * out, LG2GitRepositoryO repo, NBExternalString name)) options: #(  )