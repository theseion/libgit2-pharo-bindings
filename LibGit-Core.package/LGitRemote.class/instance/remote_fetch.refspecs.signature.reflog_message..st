libgit-calls
remote_fetch: remote refspecs: refspecs signature: signature reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(#LGitReturnCodeEnum git_remote_fetch(self, LGitStringArray * refspecs, LGitSignature * signature, String reflog_message)) 
		options: #( optCoerceNilToNull )