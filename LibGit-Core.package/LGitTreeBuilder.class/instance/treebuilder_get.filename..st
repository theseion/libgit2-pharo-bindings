libgit-calls
treebuilder_get: bld filename: filename 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitTreeEntry git_treebuilder_get(self, String filename)) options: #(  )