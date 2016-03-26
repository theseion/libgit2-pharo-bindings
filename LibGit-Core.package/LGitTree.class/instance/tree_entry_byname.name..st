libgit-calls
tree_entry_byname: tree name: name
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitTreeEntry git_tree_entry_byname(self, String name)) options: #(  )