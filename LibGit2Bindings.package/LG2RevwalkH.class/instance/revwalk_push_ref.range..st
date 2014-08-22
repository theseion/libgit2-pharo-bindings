foreign interface
revwalk_push_ref: walk range: range 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_push_ref(LG2GitRevwalkO walk, NBExternalString range)) options: #(  )