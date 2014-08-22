foreign interface
push_set_callbacks: push pack_progress_cb: pack_progress_cb pack_progress_cb_payload: pack_progress_cb_payload transfer_progress_cb: transfer_progress_cb transfer_progress_cb_payload: transfer_progress_cb_payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_set_callbacks(LG2GitPushO push, LG2GitPackbuilderProgress pack_progress_cb, NBVoid * pack_progress_cb_payload, LG2GitPushTransferProgress transfer_progress_cb, NBVoid * transfer_progress_cb_payload)) options: #( optMayGC )