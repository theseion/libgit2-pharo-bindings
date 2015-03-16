foreign interface
oid_nfmt: out n: n id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_oid_nfmt(NBExternalString out, NBInt32 n, git_oid * id)) options: #(  )