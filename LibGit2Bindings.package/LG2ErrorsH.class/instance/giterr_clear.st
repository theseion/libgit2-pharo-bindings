foreign interface
giterr_clear
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid giterr_clear()) options: #(  )