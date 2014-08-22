foreign interface
object_lookup_prefix: object_out repo: repo id: id len: len type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_lookup_prefix(LG2GitObjectO * object_out, LG2GitRepositoryO repo, git_oid * id, NBInt32 len, git_otype type)) options: #(  )