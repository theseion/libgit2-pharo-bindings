foreign interface
message_prettify: out message: message strip_comments: strip_comments 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_message_prettify(git_buf * out, NBExternalString message, NBInt32 strip_comments)) options: #(  )