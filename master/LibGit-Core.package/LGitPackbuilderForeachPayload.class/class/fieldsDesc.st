fields description
fieldsDesc
	^#(
		LGitTransferProgress * stats;
		LGitTransferProgressCallback * progress_cb;
		NBVoid * progress_payload;
		LGitOdbWritepack * writepack;
	)