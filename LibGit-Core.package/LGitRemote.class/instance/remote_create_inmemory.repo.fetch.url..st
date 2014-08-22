libgit - calls
remote_create_inmemory: out repo: repo fetch: fetch url: urlString
	"Careful: in v0.20 a virtual remote will not update FETCH_HEAD, because the remotes name is set
	to NULL by create_internal()"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_create_inmemory(LGitRemote * out, LGitRepository repo, String fetch, String urlString)) options: #(  )