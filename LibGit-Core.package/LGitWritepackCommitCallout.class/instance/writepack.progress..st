libgit-calls
writepack: writepack progress: progress
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBInt32 (LGitOdbWritepack * writepack, LGitTransferProgress * progress))
		options: #(optMayGC)