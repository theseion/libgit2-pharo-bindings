foreign interface
reference_iterator_free: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_reference_iterator_free(LG2GitReferenceIteratorO iter)) options: #(  )