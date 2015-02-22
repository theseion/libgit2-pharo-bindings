foreign interface
packbuilder_foreach: pb cb: cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_packbuilder_foreach(LG2GitPackbuilderO pb, LG2GitPackbuilderForeachCb cb, LG2GitPackbuilderForeachPayloadS * payload)) options: #( optMayGC )