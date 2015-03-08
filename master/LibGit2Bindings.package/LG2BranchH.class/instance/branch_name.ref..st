foreign interface
branch_name: out ref: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_name(NBCharacterType * * out, LG2GitReferenceO ref)) options: #(  )