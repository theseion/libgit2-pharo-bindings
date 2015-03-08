libgit-calls
writepack: writepack
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBVoid (#LGitOdbWritepack * writepack))
		options: #()