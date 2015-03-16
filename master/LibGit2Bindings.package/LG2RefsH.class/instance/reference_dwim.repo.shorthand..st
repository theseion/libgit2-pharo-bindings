foreign interface
reference_dwim: out repo: repo shorthand: shorthand 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_dwim(LG2GitReferenceO * out, LG2GitRepositoryO repo, NBExternalString shorthand)) options: #(  )