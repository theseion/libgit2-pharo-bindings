foreign interface
remote_create_with_fetchspec: out repo: repo name: name url: url fetch: fetch 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_create_with_fetchspec(LG2GitRemoteO * out, LG2GitRepositoryO repo, NBExternalString name, NBExternalString url, NBExternalString fetch)) options: #(  )