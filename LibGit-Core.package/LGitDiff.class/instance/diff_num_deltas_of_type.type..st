libgit-calls
diff_num_deltas_of_type: diff type: type
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBUInt32 git_diff_num_deltas_of_type(self, LGitDeltaTypeEnum type))
		options: #(  )