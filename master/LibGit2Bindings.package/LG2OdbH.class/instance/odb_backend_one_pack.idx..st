as yet unclassified
odb_backend_one_pack: backend_out idx: idx
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self call: #(LGitReturnCodeEnum git_odb_backend_one_pack(LG2GitOdbBackendO **backend_out, String idx)) options: #()