foreign interface
config_iterator_new: out cfg: cfg 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_iterator_new(LG2GitConfigIteratorO * out, LG2GitConfigO cfg)) options: #(  )