libgit - calls
index_read: index force: force
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_index_read(self, Boolean force)) options: #(  )