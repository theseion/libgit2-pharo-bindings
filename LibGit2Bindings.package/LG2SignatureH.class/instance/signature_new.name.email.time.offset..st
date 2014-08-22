foreign interface
signature_new: out name: name email: email time: time offset: offset 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_signature_new(git_signature * * out, NBExternalString name, NBExternalString email, git_time_t time, NBInt32 offset)) options: #(  )