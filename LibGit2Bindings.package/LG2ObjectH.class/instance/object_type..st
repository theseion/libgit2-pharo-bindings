foreign interface
object_type: obj 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_otype git_object_type(LG2GitObjectO obj)) options: #(  )