foreign interface
revwalk_hide_head: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_hide_head(LG2GitRevwalkO walk)) options: #(  )