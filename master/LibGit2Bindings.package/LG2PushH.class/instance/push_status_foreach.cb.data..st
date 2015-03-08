foreign interface
push_status_foreach: push cb: cb data: data 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_status_foreach(LG2GitPushO push, LG2PushH3Cb cb, NBVoid * data)) options: #( optMayGC )