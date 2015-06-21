libgit-calls
diff_stats_files_changed: stats
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBUInt32 git_diff_stats_files_changed(self))
		options: #(  )