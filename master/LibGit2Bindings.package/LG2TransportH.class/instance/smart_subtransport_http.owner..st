foreign interface
smart_subtransport_http: out owner: owner 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_smart_subtransport_http(git_smart_subtransport * * out, git_transport * owner)) options: #(  )