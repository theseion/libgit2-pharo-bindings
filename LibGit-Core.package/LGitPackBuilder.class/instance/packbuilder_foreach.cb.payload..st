libgit - calls
packbuilder_foreach: pb cb: cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_packbuilder_foreach(self, LGitPackbuilderForeachCallback cb, LGitPackbuilderForeachPayload * payload))
		options: #( optMayGC )