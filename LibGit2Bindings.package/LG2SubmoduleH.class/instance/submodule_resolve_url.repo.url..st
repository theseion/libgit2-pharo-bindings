foreign interface
submodule_resolve_url: out repo: repo url: url 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_resolve_url(NBInt32 * out, LG2GitRepositoryO repo, NBExternalString url)) options: #(  )