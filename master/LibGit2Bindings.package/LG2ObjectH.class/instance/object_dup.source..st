foreign interface
object_dup: dest source: source 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_dup(LG2GitObjectO * dest, LG2GitObjectO source)) options: #(  )