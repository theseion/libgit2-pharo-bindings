foreign interface
reflog_read: out repo: repo name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reflog_read(LG2GitReflogO * out, LG2GitRepositoryO repo, NBExternalString name)) options: #(  )