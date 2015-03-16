foreign interface
reference_is_valid_name: refname 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_is_valid_name(NBExternalString refname)) options: #(  )