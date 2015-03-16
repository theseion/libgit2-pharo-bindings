foreign interface
oid_shorten_new: min_length 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitOidShortenO git_oid_shorten_new(NBInt32 min_length)) options: #(  )