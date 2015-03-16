foreign interface
reflog_drop: reflog idx: idx rewrite_previous_entry: rewrite_previous_entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reflog_drop(LG2GitReflogO reflog, NBInt32 idx, NBInt32 rewrite_previous_entry)) options: #(  )