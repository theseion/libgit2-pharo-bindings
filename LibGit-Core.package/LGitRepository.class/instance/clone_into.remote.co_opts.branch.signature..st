libgit - calls
clone_into: repo remote: remote co_opts: co_opts branch: branch signature: signature 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_clone_into(self, LGitRemote remote, LG2GitCheckoutOptionsS * co_opts, String branch, LGitSignature * signature)) options: #(  )