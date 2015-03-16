foreign interface
remote_get_fetch_refspecs: array remote: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_get_fetch_refspecs(git_strarray * array, LG2GitRemoteO remote)) options: #(  )