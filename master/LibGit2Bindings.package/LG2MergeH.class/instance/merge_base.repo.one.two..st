foreign interface
merge_base: out repo: repo one: one two: two 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_base(git_oid * out, LG2GitRepositoryO repo, git_oid * one, git_oid * two)) options: #(  )