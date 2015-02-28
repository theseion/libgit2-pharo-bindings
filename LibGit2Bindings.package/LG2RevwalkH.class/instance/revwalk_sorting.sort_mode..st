foreign interface
revwalk_sorting: walk sort_mode: sort_mode 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_revwalk_sorting(#LGitRevwalkType walk, NBUInt32 sort_mode)) options: #(  )