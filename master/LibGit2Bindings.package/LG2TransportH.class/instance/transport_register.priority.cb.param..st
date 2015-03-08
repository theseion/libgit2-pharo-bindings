foreign interface
transport_register: prefix priority: priority cb: cb param: param 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_transport_register(NBExternalString prefix, NBUInt32 priority, LG2GitTransportCb cb, NBVoid * param)) options: #( optMayGC )