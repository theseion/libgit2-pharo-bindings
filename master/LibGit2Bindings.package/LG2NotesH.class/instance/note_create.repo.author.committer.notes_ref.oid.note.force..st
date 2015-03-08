foreign interface
note_create: out repo: repo author: author committer: committer notes_ref: notes_ref oid: oid note: note force: force 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_create(git_oid * out, LG2GitRepositoryO repo, git_signature * author, git_signature * committer, NBExternalString notes_ref, git_oid * oid, NBExternalString note, NBInt32 force)) options: #(  )