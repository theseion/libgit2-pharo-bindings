libgit - calls
commit_create: commitId repo: repo update_ref: update_ref author: author committer: committer message_encoding: message_encoding message: message tree: tree parent_count: parent_count parents: parentsPointer 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_commit_create(LG2GitOidS * commitId, LGitRepository repo, String update_ref, LG2GitSignatureS * author, LG2GitSignatureS * committer, String message_encoding, String message, LGitTree tree, int parent_count, NBExternalAddress parentsPointer)) options: #(  )