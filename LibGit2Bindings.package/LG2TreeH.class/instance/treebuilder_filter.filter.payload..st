foreign interface
treebuilder_filter: bld filter: filter payload: payload 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_treebuilder_filter(LG2GitTreebuilderO bld, LG2GitTreebuilderFilterCb filter, NBVoid * payload)) options: #( optMayGC )