libgit - calls
odb_write_pack: out db: db progress_cb: progress_cb progress_payload: progress_payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_odb_write_pack(LGitOdbWritepack * self, LGitOdb db, LGitTransferProgressCallback progress_cb, NBVoid * progress_payload))
		options: #( optMayGC )