libgit - calls
tree_entry_byindex: tree idx: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitTreeEntry git_tree_entry_byindex(self, int idx)) options: #(  )