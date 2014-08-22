foreign interface
repository_hashfile: out repo: repo path: path type: type as_path: as_path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_repository_hashfile(git_oid * out, LG2GitRepositoryO repo, NBExternalString path, git_otype type, NBExternalString as_path)) options: #(  )