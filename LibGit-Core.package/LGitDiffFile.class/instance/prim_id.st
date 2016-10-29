libgit-fields
prim_id
	^LGitId fromByteArray: (handle structAt: 1 length: 20)