accessing
fieldsDesc
	^#(
	NBUInt32 version;
	uint32_t flags;
	uint16_t rename_threshold;
	uint16_t rename_from_rewrite_threshold;
	uint16_t copy_threshold;
	uint16_t break_rewrite_threshold;
	NBInt32 rename_limit;
	git_diff_similarity_metric * metric;

	)