libgit-calls
writepack: writepack buffer: buffer length: length progress: progress
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBInt32 (LGitOdbWritepack * writepack, NBVoid * buffer, NBInt32 length, LGitTransferProgress * progress))
		options: #(optMayGC)