foreign interface
reference_list: array repo: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_list(git_strarray * array, LG2GitRepositoryO repo)) options: #(  )