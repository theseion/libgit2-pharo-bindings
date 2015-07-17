libgit-calls
clone: out url: url local_path: local_path options: options 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(#LGitReturnCodeEnum git_clone(LGitRepository * out, String url, String local_path, LGitCloneOptions * options))
		options: #( optCoerceNilToNull )