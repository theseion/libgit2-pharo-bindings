libgit-calls
credentials: credentials
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid (LGitCredentials * credentials))
		options: #(optMayGC)