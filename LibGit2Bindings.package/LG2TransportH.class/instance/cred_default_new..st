foreign interface
cred_default_new: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_cred_default_new(git_cred * * out)) options: #(  )