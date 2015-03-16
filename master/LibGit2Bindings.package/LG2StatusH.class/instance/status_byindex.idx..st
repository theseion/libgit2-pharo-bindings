foreign interface
status_byindex: statuslist idx: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_status_entry * git_status_byindex(LG2GitStatusListO statuslist, NBInt32 idx)) options: #(  )