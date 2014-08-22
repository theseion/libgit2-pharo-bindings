foreign interface
transport_unregister: prefix priority: priority 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_transport_unregister(NBExternalString prefix, NBUInt32 priority)) options: #(  )