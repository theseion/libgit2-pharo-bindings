accessing
fieldsDesc
	^#(
	NBUInt32 version;
	LGitSidebandProgressCallback sideband_progress;
	LGitCompletionCallback completion;
	LGitCredAcquireCallback credentials;
	LGitTransferProgressCallback transfer_progress;
	LGitUpdateTipsCallout update_tips;
	NBVoid * payload;
	)