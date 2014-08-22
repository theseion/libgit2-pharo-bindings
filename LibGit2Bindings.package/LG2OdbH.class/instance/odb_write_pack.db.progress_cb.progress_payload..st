foreign interface
odb_write_pack: out db: db progress_cb: progress_cb progress_payload: progress_payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_write_pack(LG2GitOdbWritepackO * out, LG2GitOdbO db, LG2GitTransferProgressCallback progress_cb, NBVoid * progress_payload)) options: #( optMayGC )