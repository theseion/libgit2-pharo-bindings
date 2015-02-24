as yet unclassified
writepack: writepack progress: progress
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self nbCallout
		function: #(NBInt32 (LG2GitOdbWritepackS * writepack, LG2GitTransferProgressS * progress))
		address: [ handle ]