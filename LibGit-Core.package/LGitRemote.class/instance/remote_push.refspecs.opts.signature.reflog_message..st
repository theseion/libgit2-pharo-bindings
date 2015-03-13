libgit-calls
remote_push: remote refspecs: refspecs opts: opts signature: signature reflog_message: reflog_message
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_remote_push(self, LGitStringArray * refspecs, LGitPushOptions * opts, LGitSignature * signature, String reflog_message))
		options: #( optCoerceNilToNull )