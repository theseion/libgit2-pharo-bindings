foreign interface
refspec_dst_matches: refspec refname: refname 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_refspec_dst_matches(LG2GitRefspecO refspec, NBExternalString refname)) options: #(  )