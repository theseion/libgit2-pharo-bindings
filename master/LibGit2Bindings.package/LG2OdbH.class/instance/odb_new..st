foreign interface
odb_new: out 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_new(LG2GitOdbO * out)) options: #(  )