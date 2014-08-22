foreign interface
repository_wrap_odb: out odb: odb 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_wrap_odb(LG2GitRepositoryO * out, LG2GitOdbO odb)) options: #(  )