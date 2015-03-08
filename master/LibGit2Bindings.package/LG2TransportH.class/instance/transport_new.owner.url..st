foreign interface
transport_new: out owner: owner url: url 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_transport_new(git_transport * * out, LG2GitRemoteO owner, NBExternalString url)) options: #(  )