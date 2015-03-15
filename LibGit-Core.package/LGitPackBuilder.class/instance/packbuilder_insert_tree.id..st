libgit - calls
packbuilder_insert_tree: pb id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(#LGitReturnCodeEnum git_packbuilder_insert_tree(self, LGitId * id))
		options: #( optMayGC )