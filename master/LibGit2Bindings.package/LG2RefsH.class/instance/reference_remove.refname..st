foreign interface
reference_remove: repo refname: refname 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_remove(LG2GitRepositoryO repo, NBExternalString refname)) options: #(  )