libgit - calls
cred_ssh_key_new: out username: usernameString publickey: publickey privatekey: privatekey passphrase: passphraseString
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_cred_ssh_key_new(LGitCredentials * * out, String usernameString, String publickey, String privatekey, String passphraseString)) options: #(  )