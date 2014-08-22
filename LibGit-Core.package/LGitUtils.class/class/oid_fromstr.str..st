libgit - calls
oid_fromstr: out str: str 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	<todo: 'this method should be somewhere else'>
	^self call: #(LGitReturnCodeEnum git_oid_fromstr(LG2GitOidS * out, String str)) options: #(  )