libgit - calls
repository_open_ext: out path: path flags: flags ceiling_dirs: ceiling_dirs 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_repository_open_ext(LGitRepository * out, String path, uint flags, String ceiling_dirs)) options: #( optCoerceNilToNull optStringOrNull )