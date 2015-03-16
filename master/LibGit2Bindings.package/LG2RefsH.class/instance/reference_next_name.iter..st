foreign interface
reference_next_name: out iter: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_next_name(NBCharacterType * * out, LG2GitReferenceIteratorO iter)) options: #(  )