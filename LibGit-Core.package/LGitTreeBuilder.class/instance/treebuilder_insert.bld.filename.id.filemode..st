libgit - calls
treebuilder_insert: out bld: bld filename: filename id: objectId filemode: filemode 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_treebuilder_insert(LGitTreeEntry * out, self, String filename, LG2GitOidS * objectId, uint filemode)) options: #(  )