foreign interface
cred_ssh_key_from_agent: out username: username 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_cred_ssh_key_from_agent(git_cred * * out, NBExternalString username)) options: #(  )