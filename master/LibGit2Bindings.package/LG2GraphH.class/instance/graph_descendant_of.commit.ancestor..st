foreign interface
graph_descendant_of: repo commit: commit ancestor: ancestor 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_graph_descendant_of(LG2GitRepositoryO repo, git_oid * commit, git_oid * ancestor)) options: #(  )