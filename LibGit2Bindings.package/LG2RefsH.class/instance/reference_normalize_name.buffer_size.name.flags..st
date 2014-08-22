foreign interface
reference_normalize_name: buffer_out buffer_size: buffer_size name: name flags: flags 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_normalize_name(NBExternalString buffer_out, NBInt32 buffer_size, NBExternalString name, NBUInt32 flags)) options: #(  )