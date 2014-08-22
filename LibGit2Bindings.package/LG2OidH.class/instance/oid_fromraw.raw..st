foreign interface
oid_fromraw: out raw: raw 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_oid_fromraw(git_oid * out, NBUInt8 * raw)) options: #(  )