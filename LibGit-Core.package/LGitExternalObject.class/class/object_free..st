libgit - calls
object_free: object 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(void git_object_free(ulong object)) options: #(  )