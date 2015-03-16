foreign interface
reference_next: out iter: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_next(LG2GitReferenceO * out, LG2GitReferenceIteratorO iter)) options: #(  )