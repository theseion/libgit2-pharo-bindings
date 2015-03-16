foreign interface
refspec_transform: out spec: spec name: name 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_refspec_transform(git_buf * out, LG2GitRefspecO spec, NBExternalString name)) options: #(  )