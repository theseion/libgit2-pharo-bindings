libgit-calls
oid_fmt: out id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(void git_oid_fmt(NBExternalAddress out, LGitId * self)) options: #(  )