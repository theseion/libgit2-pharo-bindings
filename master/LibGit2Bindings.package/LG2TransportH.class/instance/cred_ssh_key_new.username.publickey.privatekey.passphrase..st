foreign interface
cred_ssh_key_new: out username: username publickey: publickey privatekey: privatekey passphrase: passphrase 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_cred_ssh_key_new(git_cred * * out, String username, String publickey, String privatekey, String passphrase)) options: #(  )