accessing
fieldsDesc
	^#(
	NBUInt32 version;
	LGitCheckoutOptions checkout_opts;
	LGitRemoteCallbacks remote_callbacks;
	NBInt32 bare;
	LGitCloneLocalTypeEnum local;
	NBExternalString checkout_branch;
	LGitSignature * signature;
	LGitRepositoryCreateCallback repository_cb;
	NBVoid * repository_cb_payload;
	LGitRemoteCreateCallback remote_cb;
	NBVoid * remote_cb_payload;
	)