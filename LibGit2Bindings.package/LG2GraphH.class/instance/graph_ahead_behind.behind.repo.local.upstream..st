foreign interface
graph_ahead_behind: ahead behind: behind repo: repo local: local upstream: upstream 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_graph_ahead_behind(NBInt32 * ahead, NBInt32 * behind, LG2GitRepositoryO repo, git_oid * local, git_oid * upstream)) options: #(  )