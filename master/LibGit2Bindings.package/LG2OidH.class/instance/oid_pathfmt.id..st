foreign interface
oid_pathfmt: out id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_oid_pathfmt(NBExternalString out, git_oid * id)) options: #(  )