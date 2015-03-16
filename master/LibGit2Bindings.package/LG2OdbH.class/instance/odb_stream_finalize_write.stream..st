foreign interface
odb_stream_finalize_write: out stream: stream 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_stream_finalize_write(git_oid * out, LG2GitOdbStreamO stream)) options: #(  )