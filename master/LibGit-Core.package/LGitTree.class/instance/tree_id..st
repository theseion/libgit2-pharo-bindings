private
tree_id: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitId * git_tree_id(self)) options: #(  )