foreign interface
branch_move: out branch: branch new_branch_name: new_branch_name force: force signature: signature log_message: log_message 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_branch_move(LG2GitReferenceO * out, LG2GitReferenceO branch, NBExternalString new_branch_name, NBInt32 force, git_signature * signature, NBExternalString log_message)) options: #(  )