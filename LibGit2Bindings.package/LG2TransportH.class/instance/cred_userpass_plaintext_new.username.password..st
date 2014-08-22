foreign interface
cred_userpass_plaintext_new: out username: username password: password 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_cred_userpass_plaintext_new(LG2GitCredS * * out, String username, String password)) options: #(  )