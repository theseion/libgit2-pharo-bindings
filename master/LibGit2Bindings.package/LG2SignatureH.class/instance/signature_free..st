foreign interface
signature_free: sig 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_signature_free(git_signature * sig)) options: #(  )