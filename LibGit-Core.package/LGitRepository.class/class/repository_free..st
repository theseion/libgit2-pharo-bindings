initialize-release
repository_free: aHandle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(void git_repository_free(ulong aHandle)) options: #(  )