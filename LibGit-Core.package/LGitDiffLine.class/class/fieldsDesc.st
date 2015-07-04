fields description
fieldsDesc
	^#(
	LGitDiffLineTypeEnum	  origin       "A git_diff_line_t value"
	NBInt32    old_lineno   "Line number in old file or -1 for added line"
	NBInt32    new_lineno   "Line number in new file or -1 for deleted line"
	NBInt32    num_lines    "Number of newline characters in content"
	NBUInt32 content_len  "Number of bytes of data"
	NBUInt64 content_offset "Offset in the original file to the content"
	NBExternalString content "Pointer to diff text, not NUL-byte terminated"
	) 