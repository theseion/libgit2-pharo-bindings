foreign interface
giterr_detach: cpy 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 giterr_detach(git_error * cpy)) options: #(  )