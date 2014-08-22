accessing
fieldsDesc
	^#(
	NBUInt32 version;
	git_checkout_options checkout_opts;
	git_remote_callbacks remote_callbacks;
	NBInt32 bare;
	NBInt32 ignore_cert_errors;
	NBExternalString remote_name;
	NBExternalString checkout_branch;
	git_signature * signature;

	)