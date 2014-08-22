foreign interface
config_iterator_glob_new: out cfg: cfg regexp: regexp 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_iterator_glob_new(LG2GitConfigIteratorO * out, LG2GitConfigO cfg, NBExternalString regexp)) options: #(  )