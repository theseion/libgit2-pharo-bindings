libgit - calls
reference_target: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitOidS * git_reference_target(self)) options: #(  )