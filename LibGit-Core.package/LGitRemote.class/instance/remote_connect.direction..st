libgit - calls
remote_connect: remote direction: direction 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_connect(self, LG2GitDirectionE direction)) options: #(  )