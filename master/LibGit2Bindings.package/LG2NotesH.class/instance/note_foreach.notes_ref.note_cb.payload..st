foreign interface
note_foreach: repo notes_ref: notes_ref note_cb: note_cb payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_note_foreach(LG2GitRepositoryO repo, NBExternalString notes_ref, LG2GitNoteForeachCb note_cb, NBVoid * payload)) options: #( optMayGC )