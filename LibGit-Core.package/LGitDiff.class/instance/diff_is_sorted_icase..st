libgit-calls
diff_is_sorted_icase: diff
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(Boolean git_diff_is_sorted_icase(self))
		options: #(  )