libgit - calls
push_status_foreach: push cb: cb data: data 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_push_status_foreach(self, LGitPushStatusForeachCallback cb, void * data)) options: #( optMayGC )