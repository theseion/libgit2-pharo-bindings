foreign interface
oid_tostr: out n: n id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_oid_tostr(NBExternalString out, NBInt32 n, git_oid * id)) options: #(  )