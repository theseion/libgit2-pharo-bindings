foreign interface
signature_default: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_signature_default(git_signature * * out, LG2GitRepositoryO repo)) options: #(  )