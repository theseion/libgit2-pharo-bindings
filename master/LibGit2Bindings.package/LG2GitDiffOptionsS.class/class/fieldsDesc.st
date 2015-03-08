accessing
fieldsDesc
	^#(
	NBUInt32 version;
	uint32_t flags;
	git_submodule_ignore_t ignore_submodules;
	git_strarray pathspec;
	LG2GitDiffNotifyCb notify_cb;
	NBVoid * notify_payload;
	uint16_t context_lines;
	uint16_t interhunk_lines;
	uint16_t id_abbrev;
	git_off_t max_size;
	NBExternalString old_prefix;
	NBExternalString new_prefix;

	)