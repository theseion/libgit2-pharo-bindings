foreign interface
transport_local: out owner: owner payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_transport_local(git_transport * * out, LG2GitRemoteO owner, NBVoid * payload)) options: #(  )