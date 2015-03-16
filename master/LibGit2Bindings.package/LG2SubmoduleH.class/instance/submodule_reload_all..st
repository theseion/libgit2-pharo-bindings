foreign interface
submodule_reload_all: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_submodule_reload_all(LG2GitRepositoryO repo)) options: #(  )