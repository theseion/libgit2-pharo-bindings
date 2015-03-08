foreign interface
reflog_append: reflog id: id committer: committer msg: msg 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reflog_append(LG2GitReflogO reflog, git_oid * id, git_signature * committer, NBExternalString msg)) options: #(  )