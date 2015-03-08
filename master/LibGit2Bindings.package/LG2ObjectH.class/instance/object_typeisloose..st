foreign interface
object_typeisloose: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_typeisloose(git_otype type)) options: #(  )