foreign interface
reference_ensure_log: repo refname: refname 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_ensure_log(LG2GitRepositoryO repo, NBExternalString refname)) options: #(  )