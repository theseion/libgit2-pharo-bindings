foreign interface
reflog_entry_id_new: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_reflog_entry_id_new(LG2GitReflogEntryO entry)) options: #(  )