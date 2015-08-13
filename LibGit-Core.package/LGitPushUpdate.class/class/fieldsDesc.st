fields description
fieldsDesc
	^#(
		"
		 * The source name of the reference
		 "
		NBExternalString src_refname;
		"
		 * The name of the reference to update on the server
		 "
		NBExternalString dst_refname;
		"
		 * The current target of the reference
		 "
		LGitId src
		"
		 * The new target for the reference
		 "
		LGitId dst
	)