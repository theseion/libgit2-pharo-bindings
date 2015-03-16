foreign interface
object_peel: peeled object: object target_type: target_type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_peel(LG2GitObjectO * peeled, LG2GitObjectO object, git_otype target_type)) options: #(  )