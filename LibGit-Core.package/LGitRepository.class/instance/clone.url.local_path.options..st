libgit - calls
clone: out url: url local_path: local_path options: options 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_clone(LGitRepository * out, String url, String local_path, LG2GitCloneOptionsS * options)) options: #( optCoerceNilToNull )