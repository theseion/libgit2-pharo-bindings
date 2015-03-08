libgit-calls
info: info id1: id1 id2: id2 data: data
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBInt32 (NBExternalString info, LGitId * id1, LGitId * id2, NBVoid * data))
		options: #(optMayGC)