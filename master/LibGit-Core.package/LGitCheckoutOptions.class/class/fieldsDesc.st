accessing
fieldsDesc
	^#(
	NBUInt32 version;
	NBUInt32 checkout_strategy;
	NBInt32 disable_filters;
	NBUInt32 dir_mode;
	NBUInt32 file_mode;
	NBInt32 file_open_flags;
	NBUInt32 notify_flags;
	LGitCheckoutNotifyCallback notify_cb;
	NBVoid * notify_payload;
	LGitCheckoutProgressCallback progress_cb;
	NBVoid * progress_payload;
	LGitStringArray paths;
	LGitTree baseline;
	NBExternalString target_directory;
	NBExternalString ancestor_label;
	NBExternalString our_label;
	NBExternalString their_label;

	)