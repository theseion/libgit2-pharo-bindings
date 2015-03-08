libgit - calls
repository_is_empty: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(Boolean git_repository_is_empty(self)) options: #(  )