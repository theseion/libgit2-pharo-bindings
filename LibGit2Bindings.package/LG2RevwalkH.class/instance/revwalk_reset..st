foreign interface
revwalk_reset: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_revwalk_reset(LG2GitRevwalkO walk)) options: #(  )