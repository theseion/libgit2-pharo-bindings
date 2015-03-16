foreign interface
reflog_entry_committer: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_signature * git_reflog_entry_committer(LG2GitReflogEntryO entry)) options: #(  )