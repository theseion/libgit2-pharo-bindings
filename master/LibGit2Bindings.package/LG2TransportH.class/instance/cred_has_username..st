foreign interface
cred_has_username: cred 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_cred_has_username(git_cred * cred)) options: #(  )