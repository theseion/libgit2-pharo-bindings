foreign interface
giterr_set_str: error_class string: string 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid giterr_set_str(NBInt32 error_class, NBExternalString string)) options: #(  )