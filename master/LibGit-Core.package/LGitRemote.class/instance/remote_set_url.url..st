libgit-calls
remote_set_url: remote url: urlString 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_remote_set_url(self, NBExternalString urlString)) options: #(  )