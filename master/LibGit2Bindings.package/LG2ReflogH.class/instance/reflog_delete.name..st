foreign interface
reflog_delete: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reflog_delete(LG2GitRepositoryO repo, NBExternalString name)) options: #(  )