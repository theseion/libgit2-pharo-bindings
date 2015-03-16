foreign interface
packbuilder_write: pb path: path mode: mode progress_cb: progress_cb progress_cb_payload: progress_cb_payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_packbuilder_write(LG2GitPackbuilderO pb, NBExternalString path, NBUInt32 mode, LG2GitTransferProgressCallback progress_cb, NBVoid * progress_cb_payload)) options: #( optMayGC )