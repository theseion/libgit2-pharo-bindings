foreign interface
tree_entry_bypath: out root: root path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_entry_bypath(LG2GitTreeEntryO * out, LG2GitTreeO root, NBExternalString path)) options: #(  )