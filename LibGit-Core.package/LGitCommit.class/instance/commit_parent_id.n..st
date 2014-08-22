libgit - calls
commit_parent_id: commit n: n 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitOidS * git_commit_parent_id(self, NBUInt32 n)) options: #(  )