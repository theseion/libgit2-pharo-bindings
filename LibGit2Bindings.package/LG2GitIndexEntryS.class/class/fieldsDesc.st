accessing
fieldsDesc
	^#(
	git_index_time ctime;
	git_index_time mtime;
	NBUInt32 dev;
	NBUInt32 ino;
	NBUInt32 mode;
	NBUInt32 uid;
	NBUInt32 gid;
	git_off_t file_size;
	git_oid id;
	NBUInt8 flags;
	NBUInt8 flags_extended;
	NBExternalString path;

	)