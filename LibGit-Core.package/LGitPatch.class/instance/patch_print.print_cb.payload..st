libgit-calls
patch_print: patch print_cb: print_cb payload: payload
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_patch_print(self, LGitDiffLineCallback print_cb, NBVoid * payload))
		options: #( optMayGC optCoerceNilToNull )