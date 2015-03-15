libgit-calls
revwalk_sorting: walk sort_mode: sort_mode 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_revwalk_sorting(self, LGitRevwalkSortTypeEnum sort_mode))
		options: #(  )