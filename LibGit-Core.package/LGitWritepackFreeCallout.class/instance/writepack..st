as yet unclassified
writepack: writepack
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self nbCallout
		function: #(LGitReturnCodeEnum (LG2GitOdbWritepackS * writepack))
		address: [ handle ]