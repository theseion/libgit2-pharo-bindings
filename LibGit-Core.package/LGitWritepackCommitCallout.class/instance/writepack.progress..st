as yet unclassified
writepack: writepack progress: progress
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self nbCallout
		function: #(LGitReturnCodeEnum (LG2GitOdbWritepackS * writepack, LG2GitTransferProgressS * progress))
		address: [ handle ]