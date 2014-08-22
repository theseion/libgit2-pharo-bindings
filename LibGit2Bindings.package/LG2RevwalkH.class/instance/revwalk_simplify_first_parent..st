foreign interface
revwalk_simplify_first_parent: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_revwalk_simplify_first_parent(LG2GitRevwalkO walk)) options: #(  )