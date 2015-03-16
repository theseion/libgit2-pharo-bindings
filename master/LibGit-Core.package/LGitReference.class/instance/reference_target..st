libgit - calls
reference_target: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitId * git_reference_target(self)) options: #(  )