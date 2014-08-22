foreign interface
diff_options_init: options version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_options_init(git_diff_options * options, NBUInt32 version)) options: #(  )