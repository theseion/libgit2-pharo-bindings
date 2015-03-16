foreign interface
diff_foreach: diff file_cb: file_cb hunk_cb: hunk_cb line_cb: line_cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_foreach(LG2GitDiffO diff, LG2GitDiffFileCb file_cb, LG2GitDiffHunkCb hunk_cb, LG2GitDiffLineCb line_cb, NBVoid * payload)) options: #( optMayGC )