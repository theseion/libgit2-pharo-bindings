foreign interface
refspec_rtransform: out spec: spec name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_refspec_rtransform(git_buf * out, LG2GitRefspecO spec, NBExternalString name)) options: #(  )