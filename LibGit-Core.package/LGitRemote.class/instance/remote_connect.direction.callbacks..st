libgit-calls
remote_connect: remote direction: direction callbacks: remtoeCallbacks
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_remote_connect(self, LGitDirectionEnum direction, LGitRemoteCallbacks * remoteCallbacks))
		options: #(  )