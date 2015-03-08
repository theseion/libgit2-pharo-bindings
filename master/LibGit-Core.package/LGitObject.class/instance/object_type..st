libgit - calls
object_type: obj 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitObjectTypeEnum git_object_type(self)) options: #(  )