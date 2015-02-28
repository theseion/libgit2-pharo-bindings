as yet unclassified
writepack: writepack
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self nbCallout
		function: #(NBVoid (#LGitOdbWritepack * writepack))
		address: [ handle ]