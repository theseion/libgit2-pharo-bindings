foreign interface
config_next: entry iter: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_next(git_config_entry * * entry, LG2GitConfigIteratorO iter)) options: #(  )