libgit-calls
remote_fetch: remote refspecs: refspecs opts: opts reflog_message: reflog_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_remote_fetch(self, LGitStringArray * refspecs, LGitFetchOptions * opts, String reflog_message)) 
		options: #( optCoerceNilToNull )