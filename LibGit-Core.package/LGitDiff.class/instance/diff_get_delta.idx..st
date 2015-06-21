libgit-calls
diff_get_delta: diff idx: idx
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitDiffDelta git_diff_get_delta(self, NBUInt32 idx))
		options: #(  )