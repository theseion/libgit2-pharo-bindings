as yet unclassified
writepack: writepack buffer: buffer length: length progress: progress
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self nbCallout
		options: #(optMayGC);
		function: #(NBInt32 (LGitOdbWritepack * writepack, NBVoid * buffer, NBInt32 length, LGitTransferProgress * progress))
		address: [ handle ]