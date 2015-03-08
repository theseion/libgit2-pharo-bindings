foreign interface
smart_subtransport_git: out owner: owner 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_smart_subtransport_git(git_smart_subtransport * * out, git_transport * owner)) options: #(  )