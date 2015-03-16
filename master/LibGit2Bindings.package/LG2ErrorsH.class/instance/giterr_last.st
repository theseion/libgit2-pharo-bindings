foreign interface
giterr_last
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_error * giterr_last()) options: #(  )