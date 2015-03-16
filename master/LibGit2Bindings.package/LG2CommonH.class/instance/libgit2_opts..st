foreign interface
libgit2_opts: option 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_libgit2_opts(NBInt32 option)) options: #(  )