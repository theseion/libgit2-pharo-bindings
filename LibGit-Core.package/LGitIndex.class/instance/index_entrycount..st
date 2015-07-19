libgit-calls
index_entrycount: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_entrycount(self)) options: #(  )