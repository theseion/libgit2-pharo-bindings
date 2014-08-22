foreign interface
object_lookup: object repo: repo id: id type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_lookup(LG2GitObjectO * object, LG2GitRepositoryO repo, git_oid * id, git_otype type)) options: #(  )