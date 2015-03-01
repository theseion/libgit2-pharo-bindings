libgit - calls
packbuilder_free: pb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_packbuilder_free(self))
		options: #(  )