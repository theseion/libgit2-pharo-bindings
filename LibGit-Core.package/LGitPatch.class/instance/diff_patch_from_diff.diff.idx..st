libgit-calls
diff_patch_from_diff: out diff: diff idx: idx
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_patch_from_diff(LGitPatch * out, self, NBUInt32 idx))
		options: #(  )