foreign interface
object_id: obj 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_object_id(LG2GitObjectO obj)) options: #(  )