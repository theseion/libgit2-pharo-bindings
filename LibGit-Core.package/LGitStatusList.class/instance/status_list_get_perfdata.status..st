libgit-calls
status_list_get_perfdata: out status: status
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_status_list_get_perfdata(LGitPerData * out, self))
		options: #(  )