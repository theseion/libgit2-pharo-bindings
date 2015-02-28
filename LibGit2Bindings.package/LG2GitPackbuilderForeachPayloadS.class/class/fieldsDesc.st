fields description
fieldsDesc
	^#(
		LG2GitTransferProgressS * stats;
		LG2GitTransferProgressCallback * progress_cb;
		NBVoid * progress_payload;
		LGitOdbWritepack * writepack;
	)