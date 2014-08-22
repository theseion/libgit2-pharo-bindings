foreign interface
status_should_ignore: ignored repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_status_should_ignore(NBInt32 * ignored, LG2GitRepositoryO repo, NBExternalString path)) options: #(  )