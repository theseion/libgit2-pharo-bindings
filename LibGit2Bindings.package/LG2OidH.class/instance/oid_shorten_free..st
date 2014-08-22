foreign interface
oid_shorten_free: os 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_oid_shorten_free(LG2GitOidShortenO os)) options: #(  )