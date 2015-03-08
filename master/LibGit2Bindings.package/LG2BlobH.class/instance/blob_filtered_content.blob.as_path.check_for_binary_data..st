foreign interface
blob_filtered_content: out blob: blob as_path: as_path check_for_binary_data: check_for_binary_data 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_blob_filtered_content(git_buf * out, LG2GitBlobO blob, NBExternalString as_path, NBInt32 check_for_binary_data)) options: #(  )