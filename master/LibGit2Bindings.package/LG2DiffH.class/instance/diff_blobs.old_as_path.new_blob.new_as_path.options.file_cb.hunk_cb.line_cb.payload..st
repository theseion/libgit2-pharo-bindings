foreign interface
diff_blobs: old_blob old_as_path: old_as_path new_blob: new_blob new_as_path: new_as_path options: options file_cb: file_cb hunk_cb: hunk_cb line_cb: line_cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_diff_blobs(LG2GitBlobO old_blob, NBExternalString old_as_path, LG2GitBlobO new_blob, NBExternalString new_as_path, git_diff_options * options, LG2GitDiffFileCb file_cb, LG2GitDiffHunkCb hunk_cb, LG2GitDiffLineCb line_cb, NBVoid * payload)) options: #( optMayGC )