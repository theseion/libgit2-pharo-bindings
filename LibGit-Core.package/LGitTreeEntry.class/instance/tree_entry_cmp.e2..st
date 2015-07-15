libgit-calls
tree_entry_cmp: e1 e2: e2 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_entry_cmp(self, LGitTreeEntry e2)) options: #(  )