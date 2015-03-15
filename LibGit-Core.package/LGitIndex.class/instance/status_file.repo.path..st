libgit - calls
status_file: status_flags repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_status_file(NBInt32 * status_flags, LGitRepository repo, String path)) options: #(  )