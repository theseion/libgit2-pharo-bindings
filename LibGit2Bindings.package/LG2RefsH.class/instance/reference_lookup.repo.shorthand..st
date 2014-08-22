foreign interface
reference_lookup: out repo: repo shorthand: shorthand 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_lookup(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString shorthand)) options: #(  )