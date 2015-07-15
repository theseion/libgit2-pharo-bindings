libgit-calls
diff_stats_to_buf: out stats: stats format: format width: width
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_diff_stats_to_buf(LGitBuffer out, self, LGitDiffStatsFormatTypeEnum format, NBUInt32 width))
		options: #(  )