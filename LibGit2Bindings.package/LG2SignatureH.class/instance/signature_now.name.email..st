foreign interface
signature_now: out name: name email: email 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_signature_now(git_signature * * out, NBExternalString name, NBExternalString email)) options: #(  )