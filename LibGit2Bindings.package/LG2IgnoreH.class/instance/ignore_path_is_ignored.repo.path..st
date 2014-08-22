foreign interface
ignore_path_is_ignored: ignored repo: repo path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_ignore_path_is_ignored(NBInt32 * ignored, LG2GitRepositoryO repo, NBExternalString path)) options: #(  )