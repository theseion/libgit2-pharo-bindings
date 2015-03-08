accessing
fieldsDesc
	^#(
	NBUInt32 version;
	git_merge_tree_flag_t flags;
	NBUInt32 rename_threshold;
	NBUInt32 target_limit;
	git_diff_similarity_metric * metric;
	git_merge_file_favor_t file_favor;

	)