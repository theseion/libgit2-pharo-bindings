foreign interface
stash_save: out repo: repo stasher: stasher message: message flags: flags 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_stash_save(NBInt32 * out, LG2GitRepositoryO repo, git_signature * stasher, NBExternalString message, NBUInt32 flags)) options: #(  )