foreign interface
odb_foreach: db cb: cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_foreach(LG2GitOdbO db, LG2GitOdbForeachCb cb, NBVoid * payload)) options: #( optMayGC )