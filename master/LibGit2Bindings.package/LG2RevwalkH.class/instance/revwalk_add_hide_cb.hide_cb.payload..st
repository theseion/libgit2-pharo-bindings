foreign interface
revwalk_add_hide_cb: walk hide_cb: hide_cb payload: payload
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_hide(#LGitRevwalkType walk, LG2RevwalkHideCb hide_cb, Void * payload)) options: #( +optMayGC )