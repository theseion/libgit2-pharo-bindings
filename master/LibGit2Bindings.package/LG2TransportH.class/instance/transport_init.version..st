foreign interface
transport_init: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_transport_init(git_transport * opts, NBInt32 version)) options: #(  )