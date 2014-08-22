foreign interface
config_multivar_iterator_new: out cfg: cfg name: name regexp: regexp 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_config_multivar_iterator_new(LG2GitConfigIteratorO * out, LG2GitConfigO cfg, NBExternalString name, NBExternalString regexp)) options: #(  )