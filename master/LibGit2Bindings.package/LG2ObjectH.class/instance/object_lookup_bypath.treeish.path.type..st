foreign interface
object_lookup_bypath: out treeish: treeish path: path type: type 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_object_lookup_bypath(LG2GitObjectO * out, LG2GitObjectO treeish, NBExternalString path, git_otype type)) options: #(  )