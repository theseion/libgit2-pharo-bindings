foreign interface
repository_open_ext: out path: path flags: flags ceiling_dirs: ceiling_dirs 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_open_ext(LG2GitRepositoryO * out, NBExternalString path, NBUInt32 flags, NBExternalString ceiling_dirs)) options: #(  )