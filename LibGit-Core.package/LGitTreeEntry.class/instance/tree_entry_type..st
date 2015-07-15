libgit-calls
tree_entry_type: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitObjectTypeEnum git_tree_entry_type(self))
		options: #(  )