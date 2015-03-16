foreign interface
reference_name_to_id: out repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_name_to_id(git_oid * out, LG2GitRepositoryO repo, NBExternalString name)) options: #(  )