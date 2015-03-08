foreign interface
object_free: object 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_object_free(LG2GitObjectO object)) options: #(  )