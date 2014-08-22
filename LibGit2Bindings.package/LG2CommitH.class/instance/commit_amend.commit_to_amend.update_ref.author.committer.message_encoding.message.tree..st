foreign interface
commit_amend: id commit_to_amend: commit_to_amend update_ref: update_ref author: author committer: committer message_encoding: message_encoding message: message tree: tree 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_commit_amend(git_oid * id, LG2GitCommitO commit_to_amend, NBExternalString update_ref, git_signature * author, git_signature * committer, NBExternalString message_encoding, NBExternalString message, LG2GitTreeO tree)) options: #(  )