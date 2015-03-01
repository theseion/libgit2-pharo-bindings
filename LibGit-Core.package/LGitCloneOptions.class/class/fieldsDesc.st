accessing
fieldsDesc
	^#(
	NBUInt32 version;
	LGitCheckoutOptions checkout_opts;
	LGitRemoteCallbacks remote_callbacks;
	NBInt32 bare;
	NBInt32 ignore_cert_errors;
	NBExternalString remote_name;
	NBExternalString checkout_branch;
	LGitSignature * signature;

	)