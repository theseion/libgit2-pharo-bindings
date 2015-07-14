libgit-calls
blame_file: out repo: repo path: path options: options
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(NBInt32 git_blame_file(LGitBlame * self, LGitRepository repo, NBExternalString path, LGitBlameOptions *options))
		options: #( )