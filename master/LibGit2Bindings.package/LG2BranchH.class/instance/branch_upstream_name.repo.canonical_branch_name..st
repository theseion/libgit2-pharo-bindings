foreign interface
branch_upstream_name: out repo: repo canonical_branch_name: canonical_branch_name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_upstream_name(NBInt32 * out, LG2GitRepositoryO repo, NBExternalString canonical_branch_name)) options: #(  )