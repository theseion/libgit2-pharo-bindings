libgit - calls
giterr_last
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitErrorS * giterr_last()) options: #(  )