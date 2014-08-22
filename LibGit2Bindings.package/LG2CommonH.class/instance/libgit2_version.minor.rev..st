foreign interface
libgit2_version: major minor: minor rev: rev 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_libgit2_version(NBInt32 * major, NBInt32 * minor, NBInt32 * rev)) options: #(  )