foreign interface
revparse_ext: object_out reference_out: reference_out repo: repo spec: spec 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revparse_ext(LG2GitObjectO * object_out, LG2GitReferenceO * reference_out, LG2GitRepositoryO repo, NBExternalString spec)) options: #(  )