libgit-calls
diff_print: diff format: format print_cb: print_cb payload: payload
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_diff_print(self, LGitDiffFormatTypeEnum format, LGitDiffLineCallback print_cb, NBVoid * payload))
		options: #( optMayGC optCoerceNilToNull )