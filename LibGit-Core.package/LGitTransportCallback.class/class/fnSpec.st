callback spec
fnSpec
	^#(FFIInt32 git_transport_cb(LGitTransport * out, LGitRemote owner, FFIVoid * param))