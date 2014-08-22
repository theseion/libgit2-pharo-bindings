foreign interface
remote_create_inmemory: out repo: repo fetch: fetch url: url 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_create_inmemory(LG2GitRemoteO * out, LG2GitRepositoryO repo, NBExternalString fetch, NBExternalString url)) options: #(  )