foreign interface
odb_stream_free: stream 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_odb_stream_free(LG2GitOdbStreamO stream)) options: #(  )