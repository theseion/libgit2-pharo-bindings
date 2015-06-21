libgit-calls
diff_stats_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(void git_diff_stats_free(ulong handle))
		options: #(  )