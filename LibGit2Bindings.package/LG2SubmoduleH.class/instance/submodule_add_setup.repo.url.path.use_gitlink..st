foreign interface
submodule_add_setup: submodule repo: repo url: url path: path use_gitlink: use_gitlink 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_add_setup(LG2GitSubmoduleO * submodule, LG2GitRepositoryO repo, NBExternalString url, NBExternalString path, NBInt32 use_gitlink)) options: #(  )