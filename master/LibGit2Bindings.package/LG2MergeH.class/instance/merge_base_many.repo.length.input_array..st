foreign interface
merge_base_many: out repo: repo length: length input_array: input_array 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_merge_base_many(git_oid * out, LG2GitRepositoryO repo, NBInt32 length, git_oid * input_array)) options: #(  )