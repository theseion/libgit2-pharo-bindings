foreign interface
commit_create_v: id repo: repo update_ref: update_ref author: author committer: committer message_encoding: message_encoding message: message tree: tree parent_count: parent_count 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_create_v(git_oid * id, LG2GitRepositoryO repo, NBExternalString update_ref, git_signature * author, git_signature * committer, NBExternalString message_encoding, NBExternalString message, LG2GitTreeO tree, NBInt32 parent_count)) options: #(  )