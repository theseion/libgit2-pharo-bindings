libgit-calls
signature_default: out repo: repo
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_signature_default(ExternalAddress * out, self)) options: #(  )