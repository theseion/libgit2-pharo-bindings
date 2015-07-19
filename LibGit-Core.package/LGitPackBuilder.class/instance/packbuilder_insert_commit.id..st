libgit-calls
packbuilder_insert_commit: pb id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(#LGitReturnCodeEnum git_packbuilder_insert_commit(self, LGitId * id))
		options: #( optMayGC )