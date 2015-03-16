accessing
fieldsDesc
	^#(
	NBUInt32 version;
	uint32_t flags;
	uint32_t mode;
	NBExternalString workdir_path;
	NBExternalString description;
	NBExternalString template_path;
	NBExternalString initial_head;
	NBExternalString origin_url;

	)