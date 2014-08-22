foreign interface
reference_has_log: repo refname: refname 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_has_log(LG2GitRepositoryO repo, NBExternalString refname)) options: #(  )