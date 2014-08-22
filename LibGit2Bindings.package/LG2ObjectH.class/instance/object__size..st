foreign interface
object__size: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object__size(git_otype type)) options: #(  )