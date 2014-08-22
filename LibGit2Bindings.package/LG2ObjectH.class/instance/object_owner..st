foreign interface
object_owner: obj 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_object_owner(LG2GitObjectO obj)) options: #(  )