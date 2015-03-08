libgit-calls
giterr_last
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitError * giterr_last())
		options: #(  )