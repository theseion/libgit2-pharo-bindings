foreign interface
cred_ssh_custom_new: out username: username publickey: publickey publickey_len: publickey_len sign_fn: sign_fn sign_data: sign_data 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_cred_ssh_custom_new(git_cred * * out, NBExternalString username, NBExternalString publickey, NBInt32 publickey_len, LG2GitCredSignCallback sign_fn, NBVoid * sign_data)) options: #( optMayGC )