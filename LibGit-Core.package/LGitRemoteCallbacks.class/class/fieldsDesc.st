accessing
fieldsDesc
	^#(
	NBUInt32 version;
	LG2CloneH5Cb progress;
	LG2CloneH1Cb completion;
	LGitCredAcquireCallback credentials;
	LG2CloneH8Cb transfer_progress;
	LG2CloneH9Cb update_tips;
	NBVoid * payload;

	)