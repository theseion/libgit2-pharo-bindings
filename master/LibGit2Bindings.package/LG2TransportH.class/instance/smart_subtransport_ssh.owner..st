foreign interface
smart_subtransport_ssh: out owner: owner 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_smart_subtransport_ssh(git_smart_subtransport * * out, git_transport * owner)) options: #(  )