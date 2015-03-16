accessing
fieldsDesc
	^#(
	NBUInt32 version;
	LGitSidebandProgressCallback sideband_progress;
	LGitCompletionCallback completion;
	LGitCredAcquireCallback credentials;
	LGitTransportCertificateCheckCallback certificate_check;
	LGitTransferProgressCallback transfer_progress;
	LGitUpdateTipsCallback update_tips;
	LGitPackbuilderProgressCallback pack_progress;
	LGitPushTransferCallback push_transfer_progress;
	LGitPushUpdateReferenceCallback push_update_reference;
	NBVoid * payload;
	)