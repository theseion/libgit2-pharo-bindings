libgit - calls
tree_entry_filemode: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitFilemodeEnum git_tree_entry_filemode(self)) options: #(  )