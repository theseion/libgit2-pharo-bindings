fields description
fieldsDesc
	^#(	
	LGitDeltaTypeEnum status
	NBUInt32 flags
	"for RENAMED and COPIED, value 0-100"
	NBUInt16 similarity
	"number of files in this delta"
	NBUInt16 nfiles
	LGitDiffFile old_file
	LGitDiffFile new_file
	)