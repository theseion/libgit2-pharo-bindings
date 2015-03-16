foreign interface
indexer_new: out path: path mode: mode odb: odb progress_cb: progress_cb progress_cb_payload: progress_cb_payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_indexer_new(LG2GitIndexerO * out, NBExternalString path, NBUInt32 mode, LG2GitOdbO odb, LG2GitTransferProgressCallback progress_cb, NBVoid * progress_cb_payload)) options: #( optMayGC )