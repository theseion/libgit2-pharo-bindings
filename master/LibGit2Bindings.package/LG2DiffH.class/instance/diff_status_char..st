foreign interface
diff_status_char: status 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBCharacterType git_diff_status_char(git_delta_t status)) options: #(  )