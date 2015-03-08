foreign interface
clone: out url: url local_path: local_path options: options 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_clone(LG2GitRepositoryO * out, NBExternalString url, NBExternalString local_path, git_clone_options * options)) options: #(  )