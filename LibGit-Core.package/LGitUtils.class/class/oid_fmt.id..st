libgit - calls
oid_fmt: out id:  objectId
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	<todo: 'this method should be somewhere else'>
	^self call: #(void git_oid_fmt(NBExternalAddress out, LG2GitOidS * objectId)) options: #(  )