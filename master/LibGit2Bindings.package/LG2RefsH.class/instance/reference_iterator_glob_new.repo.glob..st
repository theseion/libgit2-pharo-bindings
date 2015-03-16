foreign interface
reference_iterator_glob_new: out repo: repo glob: glob 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_iterator_glob_new(LG2GitReferenceIteratorO * out, LG2GitRepositoryO repo, NBExternalString glob)) options: #(  )