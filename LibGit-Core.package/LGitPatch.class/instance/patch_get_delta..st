libgit-calls
patch_get_delta: patch
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitDiffDelta * git_patch_get_delta(self))
		options: #(  )