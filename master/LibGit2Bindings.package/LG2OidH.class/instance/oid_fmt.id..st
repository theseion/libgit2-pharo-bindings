foreign interface
oid_fmt: out id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_oid_fmt(NBExternalString out, git_oid * id)) options: #(  )