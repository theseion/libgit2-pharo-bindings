foreign interface
status_list_free: statuslist 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_status_list_free(LG2GitStatusListO statuslist)) options: #(  )