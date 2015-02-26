as yet unclassified
writepack: writepack buffer: buffer length: length progress: progress
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self nbCallout
		options: #(optMayGC);
		function: #(NBInt32 (LG2GitOdbWritepackS * writepack, NBVoid * buffer, NBInt32 length, LG2GitTransferProgressS * progress))
		address: [ handle ]