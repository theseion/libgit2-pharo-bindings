libgit-calls
revwalk_reset: revwalk
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid git_revwalk_reset(self))
		options: #(  )