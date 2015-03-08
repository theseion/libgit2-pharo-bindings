libgit - calls
reference_lookup: out repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_reference_lookup(LGitReference * self, LGitRepository repo, String name)) options: #(  )