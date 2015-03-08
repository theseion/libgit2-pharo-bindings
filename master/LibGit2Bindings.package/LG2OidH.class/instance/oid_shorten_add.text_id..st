foreign interface
oid_shorten_add: os text_id: text_id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_oid_shorten_add(LG2GitOidShortenO os, NBExternalString text_id)) options: #(  )