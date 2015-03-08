foreign interface
attr_value: attr 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_attr_t git_attr_value(NBExternalString attr)) options: #(  )