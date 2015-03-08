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
	LG2GitCheckoutNotifyCb notify_cb;
	NBVoid * notify_payload;
	LG2GitCheckoutProgressCb progress_cb;
	NBVoid * progress_payload;
	git_strarray paths;
	LG2GitTreeO baseline;
	NBExternalString target_directory;
	NBExternalString ancestor_label;
	NBExternalString our_label;
	NBExternalString their_label;

	)