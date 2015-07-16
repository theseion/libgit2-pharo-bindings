libgit-calls
strarray_free: handle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	"libgit2 will also free all the strings in this struct"
	^ self
		call: #(void git_strarray_free(ulong handle))
		options: #()