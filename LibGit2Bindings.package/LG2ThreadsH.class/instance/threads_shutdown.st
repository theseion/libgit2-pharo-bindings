foreign interface
threads_shutdown
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_threads_shutdown()) options: #(  )