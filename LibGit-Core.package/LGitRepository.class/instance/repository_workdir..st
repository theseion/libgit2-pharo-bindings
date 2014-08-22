libgit - calls
repository_workdir: repo
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(String git_repository_workdir(self)) options: #(  )