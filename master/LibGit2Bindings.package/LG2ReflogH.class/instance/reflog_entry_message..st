foreign interface
reflog_entry_message: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_reflog_entry_message(LG2GitReflogEntryO entry)) options: #(  )