libgit - calls
object_lookup: object repo: repo id: oid type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(int git_object_lookup(LGitObject * object, LGitRepository repo, LGitId * oid, LG2GitOtypeE type)) options: #(  )