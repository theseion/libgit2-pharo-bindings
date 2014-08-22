foreign interface
packbuilder_set_callbacks: pb progress_cb: progress_cb progress_cb_payload: progress_cb_payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_packbuilder_set_callbacks(LG2GitPackbuilderO pb, LG2GitPackbuilderProgress progress_cb, NBVoid * progress_cb_payload)) options: #( optMayGC )