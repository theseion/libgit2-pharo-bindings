foreign interface
branch_set_upstream: branch upstream_name: upstream_name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_set_upstream(LG2GitReferenceO branch, NBExternalString upstream_name)) options: #(  )