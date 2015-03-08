accessing
fieldsDesc
	^#(
	git_delta_t status;
	uint32_t flags;
	uint16_t similarity;
	uint16_t nfiles;
	git_diff_file old_file;
	git_diff_file new_file;

	)