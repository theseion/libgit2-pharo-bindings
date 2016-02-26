accessing
fnSpec
	^#(FFIInt32 (LGitCheckoutNotifyTypeEnum why, FFIExternalString path, LGitDiffFileS * baseline, LGitDiffFile * target, LGitDiffFile * workdir, NBVoid * payload))