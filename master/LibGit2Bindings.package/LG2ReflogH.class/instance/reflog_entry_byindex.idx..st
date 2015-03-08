foreign interface
reflog_entry_byindex: reflog idx: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitReflogEntryO git_reflog_entry_byindex(LG2GitReflogO reflog, NBInt32 idx)) options: #(  )