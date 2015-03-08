foreign interface
object_string2type: str 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_otype git_object_string2type(NBExternalString str)) options: #(  )