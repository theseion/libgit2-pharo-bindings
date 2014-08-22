foreign interface
object_short_id: out obj: obj 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_short_id(git_buf * out, LG2GitObjectO obj)) options: #(  )