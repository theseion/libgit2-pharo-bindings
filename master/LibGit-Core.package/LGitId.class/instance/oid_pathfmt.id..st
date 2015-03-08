libgit-calls
oid_pathfmt: out id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(NBVoid git_oid_pathfmt(NBExternalAddress out, LGitId * self)) options: #(  )