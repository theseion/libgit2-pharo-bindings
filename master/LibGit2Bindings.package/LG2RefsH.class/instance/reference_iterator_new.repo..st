foreign interface
reference_iterator_new: out repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_iterator_new(LG2GitReferenceIteratorO * out, LG2GitRepositoryO repo)) options: #(  )