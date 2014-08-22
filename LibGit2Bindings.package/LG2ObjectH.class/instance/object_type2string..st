foreign interface
object_type2string: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_object_type2string(git_otype type)) options: #(  )