foreign interface
signature_dup: dest sig: sig 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_signature_dup(git_signature * * dest, git_signature * sig)) options: #(  )