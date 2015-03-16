foreign interface
odb_stream_write: stream buffer: buffer len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_odb_stream_write(LG2GitOdbStreamO stream, NBExternalString buffer, NBInt32 len)) options: #(  )