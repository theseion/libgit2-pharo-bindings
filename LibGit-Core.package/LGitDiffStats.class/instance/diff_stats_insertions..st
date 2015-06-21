libgit-calls
diff_stats_insertions: stats
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBUInt32 git_diff_stats_insertions(self))
		options: #(  )