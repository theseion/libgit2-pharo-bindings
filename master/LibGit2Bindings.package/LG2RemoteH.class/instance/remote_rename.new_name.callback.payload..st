foreign interface
remote_rename: remote new_name: new_name callback: callback payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_remote_rename(LG2GitRemoteO remote, NBExternalString new_name, LG2GitRemoteRenameProblemCb callback, NBVoid * payload)) options: #( optMayGC )