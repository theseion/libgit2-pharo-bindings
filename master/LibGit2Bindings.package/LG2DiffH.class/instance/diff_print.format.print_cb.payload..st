foreign interface
diff_print: diff format: format print_cb: print_cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_print(LG2GitDiffO diff, git_diff_format_t format, LG2GitDiffLineCb print_cb, NBVoid * payload)) options: #( optMayGC )