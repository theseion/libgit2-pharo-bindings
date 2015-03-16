foreign interface
note_default_ref: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_default_ref(NBCharacterType * * out, LG2GitRepositoryO repo)) options: #(  )