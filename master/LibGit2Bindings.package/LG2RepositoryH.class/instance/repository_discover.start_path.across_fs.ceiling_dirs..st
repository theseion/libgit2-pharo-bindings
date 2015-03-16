foreign interface
repository_discover: out start_path: start_path across_fs: across_fs ceiling_dirs: ceiling_dirs 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_discover(git_buf * out, NBExternalString start_path, NBInt32 across_fs, NBExternalString ceiling_dirs)) options: #(  )