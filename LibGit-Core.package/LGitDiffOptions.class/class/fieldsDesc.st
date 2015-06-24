fields description
fieldsDesc
	^#(
	NBUInt32 version      "version for the struct"
	NBUInt32 flags            "defaults to GIT_DIFF_NORMAL"

	"options controlling which files are in the diff"

	LGitSubmoduleIgnoreTypeEnum ignore_submodules "submodule ignore rule"
	LGitStringArray       pathspec     "defaults to include all paths"
	LGitDiffNotifyCallback notify_cb
	NBVoid              * notify_payload

	"options controlling how to diff text is generated"

	NBUInt32    context_lines    "defaults to 3"
	NBUInt32    interhunk_lines  "defaults to 0"
	NBUInt16    id_abbrev       "default 'core.abbrev' or 7 if unset"
	NBUInt64   max_size         "defaults to 512MB"
	NBExternalString old_prefix       "defaults to 'a'"
	NBExternalString new_prefix       "defaults to 'b'"
	)