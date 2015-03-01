libgit - calls
revwalk_free: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_revwalk_free(self))
		options: #(  )