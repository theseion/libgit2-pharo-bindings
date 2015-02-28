foreign interface
odb_exists: db id: id 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(Boolean git_odb_exists(LG2GitOdbO db, LGitId * id)) options: #(  )