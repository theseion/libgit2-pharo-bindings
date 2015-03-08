foreign interface
threads_init
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_threads_init()) options: #(  )