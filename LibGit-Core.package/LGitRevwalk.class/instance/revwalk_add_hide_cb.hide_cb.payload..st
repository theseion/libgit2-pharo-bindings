libgit - calls
revwalk_add_hide_cb: walk hide_cb: hide_cb payload: payload
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_revwalk_hide(self, LGitRevwalkHideCallback hide_cb, NBVoid * payload))
		options: #( optMayGC optCoerceNilToNull )