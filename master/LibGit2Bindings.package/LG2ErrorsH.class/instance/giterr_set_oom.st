foreign interface
giterr_set_oom
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid giterr_set_oom()) options: #(  )