foreign interface
status_file: status_flags repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_status_file(NBUInt32 * status_flags, LG2GitRepositoryO repo, NBExternalString path)) options: #(  )