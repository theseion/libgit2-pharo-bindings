libgit - calls
revparse_single: out repo: repo spec: spec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_revparse_single(LGitObject * out, self, String spec)) options: #(  )