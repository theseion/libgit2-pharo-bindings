libgit - calls
status_file: status_flags repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_status_file(int * status_flags, self, String path)) options: #(  )