libgit-calls
pathspec_match_list_diff_entry: m pos: pos
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitDiffDelta git_pathspec_match_list_diff_entry(LGitPathSpecMatchList m, NBUItnt32 pos))
		options: #(  )