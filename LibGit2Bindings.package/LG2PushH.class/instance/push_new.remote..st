foreign interface
push_new: out remote: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_new(LG2GitPushO * out, LG2GitRemoteO remote)) options: #(  )