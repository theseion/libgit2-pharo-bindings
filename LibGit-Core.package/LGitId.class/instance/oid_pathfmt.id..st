libgit-calls
oid_pathfmt: out id: id 
	^ self call: #(void git_oid_pathfmt(FFIExternalAddress out, LGitId * self)) options: #(  )