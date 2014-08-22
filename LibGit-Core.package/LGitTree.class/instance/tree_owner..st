libgit - calls
tree_owner: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitRepository git_tree_owner(self)) options: #(  )