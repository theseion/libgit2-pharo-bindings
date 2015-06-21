libgit-calls
diff_status_char: status
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(Character git_diff_status_char(LGitDeltaTypeEnum status))
		options: #(  )