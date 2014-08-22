foreign interface
status_list_entrycount: statuslist 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_status_list_entrycount(LG2GitStatusListO statuslist)) options: #(  )