libgit-calls
blame_buffer: out reference: reference buffer: buffer buffer_len: buffer_len
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBInt32 git_blame_buffer(LGitBlame * self, LGitBlame reference, NBExternalString buffer, NBUInt32 buffer_len))
		options: #( )